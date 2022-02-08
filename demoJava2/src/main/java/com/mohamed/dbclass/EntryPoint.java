package com.mohamed.dbclass;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static com.mohamed.dbclass.PostgresDriver.ExecuteStatements;

public class EntryPoint {
  private static final Logger logger = LoggerFactory.getLogger(EntryPoint.class);
  public static void main(String[] args) {
    //
    logger.info("Hello World from my logger");
    try
    {
    ExecuteStatements();
    logger.info("Completed Successfully");
    }
    catch (Exception ex)
    {
      logger.error(
              "Caught exception {} running program , stack trace {}",
              ex.getMessage(),
              ex.getStackTrace());
    }
  }
}
