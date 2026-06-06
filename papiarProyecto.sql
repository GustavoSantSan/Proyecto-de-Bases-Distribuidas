Prompt ============================
Prompt Eliminando usuario ILAP_BDD en todas las PDBs
Prompt ============================

-- =========================
-- GSSBDD_S1
-- =========================
Prompt GSSBDD_S1
connect sys/system1@gssbdd_s1 as sysdba

BEGIN
  EXECUTE IMMEDIATE 'DROP USER ilap_bdd CASCADE';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -01918 AND SQLCODE != -01920 THEN
      RAISE;
    END IF;
END;
/

-- =========================
-- GSSBDD_S2
-- =========================
Prompt GSSBDD_S2
connect sys/system1@gssbdd_s2 as sysdba

BEGIN
  EXECUTE IMMEDIATE 'DROP USER ilap_bdd CASCADE';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -01918 AND SQLCODE != -01920 THEN
      RAISE;
    END IF;
END;
/

-- =========================
-- RGPBDD_S1
-- =========================
Prompt RGPBDD_S1
connect sys/system1@rgpbdd_s1 as sysdba

BEGIN
  EXECUTE IMMEDIATE 'DROP USER ilap_bdd CASCADE';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -01918 AND SQLCODE != -01920 THEN
      RAISE;
    END IF;
END;
/

-- =========================
-- RGPBDD_S2
-- =========================
Prompt RGPBDD_S2
connect sys/system1@rgpbdd_s2 as sysdba

BEGIN
  EXECUTE IMMEDIATE 'DROP USER ilap_bdd CASCADE';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -01918 AND SQLCODE != -01920 THEN
      RAISE;
    END IF;
END;
/



