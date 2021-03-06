
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc1175.vhd,v 1.2 2001-10-26 16:29:39 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c08s00b00x00p01n02i01175ent IS
END c08s00b00x00p01n02i01175ent;

ARCHITECTURE c08s00b00x00p01n02i01175arch OF c08s00b00x00p01n02i01175ent IS

BEGIN
  TESTING: PROCESS
    variable a : integer := 0;
    variable b : integer := 1;
  BEGIN
    LP1 : for i in 1 to 10 loop
      a := a + 1; 
    end loop;

    if a = 10 then
      b := 10;
    elsif a = 0 then
      b := 0;
    else
      b := 5;
    end if;

    assert NOT( (a=10) and (b=10) )
      report "***PASSED TEST: c08s00b00x00p01n02i01175"
      severity NOTE;
    assert ( (a=10) and (b=10) )
      report "***FAILED TEST: c08s00b00x00p01n02i01175 - Sequential statements are permitted in a sequence of statements."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c08s00b00x00p01n02i01175arch;
