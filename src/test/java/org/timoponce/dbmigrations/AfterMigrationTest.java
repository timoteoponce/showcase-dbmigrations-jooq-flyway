package org.timoponce.dbmigrations;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Arrays;

import static org.junit.Assert.assertEquals;
import static org.timoponce.data.Tables.*;

import org.jooq.Result;
import org.jooq.impl.DSL;
import org.junit.Test;

public class AfterMigrationTest {

  @Test
  public void testQueryingAfterMigration() throws Exception {
    try (Connection c = DriverManager.getConnection("jdbc:h2:./target/build-db", "sa", "")) {
      Result<?> result =
          DSL.using(c)
              .select(AUTHOR.FIRST_NAME, AUTHOR.LAST_NAME, BOOK.ID, BOOK.TITLE)
              .from(AUTHOR)
              .join(BOOK)
              .on(AUTHOR.ID.eq(BOOK.AUTHOR_ID))
              .orderBy(BOOK.ID.asc())
              .fetch();

      assertEquals(4, result.size());
      assertEquals(Arrays.asList(1, 2, 3, 4), result.getValues(BOOK.ID));
    }
  }
}
