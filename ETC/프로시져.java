DECLARE

  tx CLOB;

BEGIN

  tx := '<items>
  
</items>';

  SP_XML_SAVE(tx => tx);

END;
/