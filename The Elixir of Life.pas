program The_Elixir_of_Life;

uses crt, UnitGraphics, UnitIntro;

const 	//Race constants
		HumStr=20; HumAgil=15; HumIntel=15;
		OrcStr=40; OrcAgil=10; OrcIntel=0;
		UndStr=10; UndAgil=0; UndIntel=40;
		ElfStr=10; ElfAgil=20; ElfIntel=20;
		
		//Class constants
		MagStr=0; MagAgil=0; MagIntel=50;
		WarStr=35; WarAgil=15; WarIntel=0;
		PriStr=10; PriAgil=0; PriIntel=40;
		ArcStr=10; ArcAgil=40; ArcIntel=0;

var 	player:string;
		yesorno:char;
		Str, Agil, Intel, Xp, life, mana, damage, level:integer;
		race, clas, dir:char; 
		loc:integer;
		WeaponStr, WeaponDam:integer;
		RaceName, ClassName, LocName, DirName:string;
		win1, win2, win3, win4:boolean;
		shield, sword, armor, elixir, potion, spear, arc, axe, bat, weapon:boolean;
		WolfDam, WolfPow, DragonPow, DragonDam, KnightPow, KnightDam, WizardPow, WizardDam:integer;
		items:array [1..4] of string;
		i:integer;
		w1, w2, w3, w4:string;
		e:boolean;
		


procedure award();
	begin
		textcolor(7);
		writeln('                    _ /\.`|_');
		writeln('                 .-| |\ | / |_');
		writeln('               / \ _>-"""-._.`|_');
		write('              >`-.`         `./ \           Συγχαρητήρια ');
		textcolor(7);
		write(player);
		textcolor(7);
		writeln('! Κέρδισες!!!');
		writeln('             /`./             \-<');
		writeln('             `-|  Elixir       |_/');
		writeln('             /_|       of      |_\');
		writeln('             ) |        Life   | |');
		writeln('             -<|               |\/');
		writeln('             ``_\             /`<');
		writeln('              |_/`.         .`\_/');
		writeln('               \_/ >-.._..-`\_|');
		writeln('                 `-`_| \_\|_/');
		writeln('                  |   `` |  |');
		writeln('                  |      |  |');
		writeln('                  |      |  |');
		writeln('                  |      |  |');
		writeln('                  |      |  |');
		writeln('                  |  /\  |  |');
		writeln('                  | /| \ |\ |');
		writeln('                  |/ |/ \| \|');
	end;
	
	
procedure lakepicture2();
	begin
		textcolor(11);
		writeln('           A');             
		writeln('          /.\');       
		writeln('     <|  [""M#');      
		writeln('      A   | #');             
		writeln('     /.\ [""M#');             
		write('    [""M# | #  U"U#U;       ');
		textcolor(13);
		write(player);
		textcolor(white);
		writeln(' τι θέλεις να κάνεις?');
		textcolor(11);
		write('     | #  | #  \ .:/        ');
		textcolor(7);
		writeln('ΕΠΙΛΟΓΗ ΚΙΝΗΣΗΣ');
		textcolor(11);
		write('     | #  | #___| #         ');
		textcolor(7);
		writeln('Πάτησε το αντίστοιχο πλήκτρο στο πληκτρολόγιο σου.');
		textcolor(11);
		write('     | "--"     .-"         ');
		textcolor(7);
		writeln('Περπάτησε (Β)όρεια Ή (Ν)ότια Ή (Α)νατολικά.');
		textcolor(11);
		write('   |"-"-"-"-"-#-#-##        ');
		textcolor(7);
		writeln('Μετάβαση στα (σ)τοιχεία παίκτη και το (χ)άρτη.');
		textcolor(11);
		writeln('   |     # ## ######        ');
		writeln('    \       .::::"/');
		writeln('     \      ::::"/');
		writeln('   :8a|    # # ##');
		writeln('   ::88a      ###');
		writeln('  ::::888a  8a ##::.');
		writeln('  ::::::888a88a[]::::...');
		textcolor(blue);
		writeln('::":::88::::888::Y88a______________________________________________________');
		writeln(':: ::::88a::::88a:Y88a                                  __---__-- __');
		writeln('" .: ::Y88a:::::8a:Y88a                            __----_-- -------_-__');
		writeln('  :" ::::8P::::::::::88aa.                   _ _- --  --_ --- __  --- __--');
		textcolor(7);
	end;
	
	
procedure levelup();
	begin
		Str:=Str+20;
		Agil:=Agil+20;
		Intel:=Intel+20;
		Xp:=Xp+100;
		level:=level+1;
		life:=life+200;
		mana:=mana+20;
		damage:=Str+WeaponDam;
	end;


procedure wrongbutton();
	begin
		writeln('Λάθος επιλογή! Προσπάθησε ξανά!');
		delay(2000);
		clrscr;
	end;
	
	
procedure fillitems();
	begin
		items[1]:='δόρυ';
		items[2]:='τόξο';
		items[3]:='τσεκούρι';
		items[4]:='ρόπαλο';
		i:=random(4)+1;
		case i of
		1:	begin
				spear:=true;
				WeaponDam:=WeaponDam+10;
			end;
		2:	begin
				arc:=true;
				WeaponDam:=WeaponDam+10;
			end;
		3:	begin
				axe:=true;
				WeaponDam:=WeaponDam+10;
			end;
		4:	begin
				bat:=true;
				WeaponDam:=WeaponDam+10;
			end;
		end;
	end;
	
	
procedure weapons();
	begin
		if sword=true then 
			begin
				w1:='σπαθί';
				WeaponStr:=WeaponStr+10;
			end;
		if armor=true then 
			begin
				w2:='πανοπλία';
				WeaponStr:=WeaponStr+30;
			end;
		if shield=true then 
			begin
				w3:='ασπίδα';
				WeaponStr:=WeaponStr+10;
			end;
		if elixir=true then 
			begin
				w4:='ελιξήριο';
				WeaponStr:=WeaponStr+1000;
			end;
	end;


procedure inventory();
	begin
		weapons();
		writeln('      .-----------------------------------------------------------------.     ');
		writeln('     /  .-.            ___  ___  ___  _ __  _ ___  _  ___           .-.  \    ');
		writeln('    |  /   \          / __||_ _|| . || |\ \/ | __|| || . |         /   \  |   ');
		writeln('    | |\_.  |         \__ \ | | | | || | \ \ | _| | ||   |        |    /| |   ');
		writeln('    |\|  | /|         |___/ |_| |___||_|_/\_\|___||_||_|_|        |\  | |/|   ');
		writeln('    | `---" |                                                     | `---" |   ');
		writeln('    |       |-----------------------------------------------------|       |   ');
		writeln('    \       |              Πάτησε <Enter> για έξοδο.              |       /   ');
		textcolor(7);
		write('Όνομα: ':35);
		textcolor(13);
		writeln(player);
		textcolor(7);
		writeln('Φυλή: ':34,RaceName);
		textcolor(7);
		writeln('Κλάση: ':35,ClassName);
		textcolor(7);
		write('Τοποθεσία: ':39);
		textcolor(6);
		writeln(LocName);
		textcolor(7);
		writeln('ΣΤΑΤΙΣΤΙΚΑ':23,'ΑΝΤΙΚΕΙΜΕΝΑ':43);
		writeln('Ζωή: ':18,life,'':34,w1);
		writeln('Επίπεδο: ':22,level,'':32,w2);
		writeln('Xp: ':17,Xp,'':37,w3);
		writeln('Μαγεία: ':21,Mana,'':32,w4);
		writeln('Δύναμη: ':21,Str,'':32,items[i]);
		writeln('Ευκινησία: ':24,Agil);
		writeln('Νοημοσύνη: ':24,Intel);
		writeln('Αποτελεσματικότητα Επίθεσης: ':42,damage);
		writeln('  .--.      .-`.      .--.      .--.      .--.      .--.      .`-.      .--.  ');
		writeln(':::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\ ');
		writeln('"      `--"      `.-"      `--"      `--"      `--"      `-."      `--"      `');
		readln();
		clrscr;
	end;
	
	
procedure map1();
	begin
		
		textcolor(6);
		write('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');
		write(' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ ');
		write('  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^     ');
		write('    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ');
		write('            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^           ');
		write('               ^^^^^^^^^^^^^^^^^^^ ΣΠΗΛΙΑ ^^^^^^^^^^^^^^^^^^^^^^^^              ');
		write('                          ^^^^^^^^^^^^^^^^^^^^^^                                ');
		write('                                ^^^^| |^^^^^^                                   ');
		write('                                   ^| |^^^                                      ');
		write('                                                                                ');
		writeln();
		textcolor(9);
		write('  wwwwwww                       ');
		textcolor(8);
		write('   _ o /              ############              ');
		textcolor(9);
		write(' wwwwwwwwwwwww                   | ');
		textcolor(8);
		write(' `#`              #************#             ');
		textcolor(blue);
		write(' wwwwwwwwwwwwww                ');
		textcolor(8);
		write('     d b              #** ΧΩΡΙΟ ***#             ');
		textcolor(9);
		write(' wwww ΛΙΜΝΗ www                ');
		textcolor(8);
		write('                      #************#             ');
		textcolor(blue);
		write('  wwwwwwwwwww                  ');
		textcolor(8);
		write('                      #***********#              ');
		textcolor(9);
		write('    wwwwww                     ');
		textcolor(8);
		write('                       ###########               ');
		textcolor(9);
		textcolor(2);
		write('                                 AAAAAAAAAAAAA                                  ');
		write('                              AAAAAAAAAAAAAAAAAAAAAAA                           ');
		write('                          AAAAAAAAAAAA ΔΑΣΟΣ AAAAAAAAAAAA                       ');
		write('                    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA             ');
		write('                AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA         ');
		write('             AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA      ');
		write(' AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA   ');
		textcolor(0);
		textbackground(15);
		write('Πάτησε <Enter> για έξοδο.':60);
		textcolor(7);
		textbackground(0);
		readln();
		clrscr;
	end;

	
procedure map();
var m:char;
	begin
		repeat
		writeln('  .--.      .-`.      .--.      .--.      .--.      .--.      .`-.      .--.  ');
		writeln(':::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\ ');
		writeln('"      `--"      `.-"      `--"      `--"      `--"      `-."      `--"      `');
		writeln('      .-----------------------------------------------------------------.     ');
		writeln('     /  .-.              __  _ ___  ___  ___  _ _  ___              .-.  \    ');
		writeln('    |  /   \             \ \/ | . || . \|_ _|| | |/ __|           |    \  |   ');
		writeln('    | |\_.  |             \ \ |   ||  _/ | | | . |\__ \           |    /| |   ');
		writeln('    |\|  | /|            _/\_\|_|_||_|   |_| |_|_||___/           |\  | |/|   ');
		writeln('    | `---" |                                                     | `---" |   ');
		writeln('    |       |-----------------------------------------------------|       |   ');
		write('     \     /  ');
		textcolor(0);
		textbackground(15);
		write('Πάτησε <Μ> για μεγαλύτερο χάρτη Ή <Enter> για έξοδο.');
		textcolor(7);
		textbackground(0);
		writeln(' \     /    ');
		writeln('      `---"                                                         `---"     ');
		textcolor(6);
		write('     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  ||');
		textcolor(7);
		writeln('   |> Τοποθεσία:', LocName);
		textcolor(6);
		write('         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      ||');
		writeln('                              ');
		write('            ^^^^^^^^^^^^^^^^^^^^^^            ||');
		textcolor(7);
		writeln('   |> Κατεύθυνση:', Dirname);
		textcolor(6);
		write('                  ^^^^^^^^^^^^^               ||');
		writeln('                              ');
		textcolor(1);
		write(' wwwwwww');
		textcolor(6);
		write('            ^^||^^^                   ||');
		textcolor(7);
		writeln('   |> Αποστολή:  ');
		textcolor(1);
		write('  wwwwwwww');
		textcolor(6);
		write('                         ########   ||');
		writeln('                              ');
		textcolor(1);
		write(' wwwwwwwwwww          ');
		textcolor(4);
		write('!!');
		textcolor(6);
		write('           #      #   ||');
		textcolor(7);
		writeln('    Βρες το ελιξήριο της ζωής!');
		textcolor(1);
		write(' wwwwwwwww');
		textcolor(2);
		write('         AAAAAAAAA');
		textcolor(6);
		write('       ########   ||');
		textcolor(7);
		writeln('                             ');
		textcolor(2);
		write('            AAAAAAAAAAAAAAAAAAAAA');
		textcolor(6);
		write('             ||');
		textcolor(7);
		writeln('                               ');
		writeln('  .--.      .-`.      .--.      .--.      .--.      .--.      .`-.      .--.  ');
		writeln(':::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\ ');
		writeln('"      `--"      `.-"      `--"      `--"      `--"      `-."      `--"      `');
		m:=readkey;
		clrscr;
		case m of
		#204, #236, #77, #109:	map1();	
		#13, #0, #28:	clrscr;
		else wrongbutton();
		end;
		until (m=#13) or (m=#0) or (m=#28);
	end;
	
	
procedure chooserace();
	begin
		repeat
			castlepicture();
			textcolor(13);
			write(player);
			textcolor(white);
			writeln(' διάλεξε τη φυλή στην οποία θέλεις να ανήκεις με το σωστό αριθμό (1-4): ');
			writeln();
			writeln('=====================================================================':74);
			writeln('| 1) Άνθρωποι    | 2) Όρκς        | 3) Αθάνατοι    | 4) Ξωτικά      |':74);
			writeln('=====================================================================':74);
			writeln('| -Δύναμη    :20 | -Δύναμη    :40 | -Δύναμη    :10 | -Δύναμη    :10 |':74);
			writeln('| -Ευκινησία :15 | -Ευκινησία :10 | -Ευκινησία : 0 | -Ευκινησία :20 |':74);
			writeln('| -Νοημοσύνη :15 | -Νοημοσύνη : 0 | -Νοημοσύνη :40 | -Νοημοσύνη :20 |':74);
			writeln('=====================================================================':74);
			write('|> Η επιλογή σου είναι: ':45);
			race:=readkey;
			case race of
			'1':	begin
					RaceName:='Άνθρωποι';
					writeln(RaceName);
					delay(1000);
					clrscr;
					human();
					readln();
				end;
   			'2':	begin
   			 		RaceName:='Όρκς';
					writeln(RaceName);
   			 		delay(1000);
    		 		clrscr;
    		 		Orc();
    		 		readln();
    		 	end;
    		'3':	begin
    		 		RaceName:='Αθάνατοι';
					writeln(RaceName);
    		 		delay(1000);
    		 		clrscr;
    		 		undead();
    		 		readln();
    		 	end;
    		'4':	begin
    				RaceName:='Ξωτικά';
					writeln(RaceName);
    				delay(1000);
    				clrscr;
    				elf();
    				readln();
    			end
    		else wrongbutton();
        end;	
        until (race>='1') and (race<='4');
        clrscr;
	end;
	
	
procedure chooseclass();
	begin
		repeat
			castlepicture();
			textcolor(13);
			write(player);
			textcolor(white);
			writeln(' διάλεξε την κατηγορία στην οποία θέλεις να ανήκεις με το σωστό αριθμό (1-4):');
			writeln();
			writeln('====================================================================':74);
			writeln('| 1)Πολεμιστής   | 2) Μάγος       | 3) Τοξότης     | 4) Ιερέας     |':74);
			writeln('====================================================================':74);
			writeln('| -Δύναμη    :35 | -Δύναμη    : 0 | -Δύναμη    :10 | -Δύναμη    :10|':74);
			writeln('| -Ευκινησία :15 | -Ευκινησία : 0 | -Ευκινησία :40 | -Ευκινησία : 0|':74);
			writeln('| -Νοημοσύνη : 0 | -Νοημοσύνη :50 | -Νοημοσύνη : 0 | -Νοημοσύνη :40|':74);
			writeln('====================================================================':74);
			write('|> Η επιλογή σου είναι: ':45);
			clas:=readkey;
			
		case clas of
			'1':	begin
   			 		ClassName:='Πολεμιστής';
					writeln(ClassName);
   			 		delay(1000);
    		 		clrscr;
    		 		warrior();
    		 		readln();
    		 	end;
   			'2':	begin
   			 		ClassName:='Μάγος';
					writeln(ClassName);
   			 		delay(1000);
    		 		clrscr;
    		 		mage();
    		 		readln();
    		 	end;
    		'3':	begin
   			 		ClassName:='Τοξότης';
					writeln(ClassName);
   			 		delay(1000);
    		 		clrscr;
    		 		archer();
    		 		readln();
    		 	end;
    		'4':	begin
    				ClassName:='Ιερέας';
					writeln(ClassName);
    				delay(1000);
    		 		clrscr;
    		 		priest();
    		 		readln();
    		 	end
    		else wrongbutton();
        end;	
        until (clas>='1') and (clas<='4');
		clrscr;     
		
	end;
	
	
procedure stats();
	begin
		level:=1;
		Xp:=0;
		life:=100;
		mana:=50;
		WeaponDam:=0;
		
		if (race='1') and (clas='1') then
			begin
				Str:=HumStr+WarStr;
				Agil:=HumAgil+WarAgil;
				Intel:=HumIntel+WarIntel;
			end;
		if (race='1') and (clas='2') then
			begin
				Str:=HumStr+MagStr;
				Agil:=HumAgil+MagAgil;
				Intel:=HumIntel+MagIntel;
			end;	
		if (race='1') and (clas='3') then
			begin
				Str:=HumStr+ArcStr;
				Agil:=HumAgil+ArcAgil;
				Intel:=HumIntel+ArcIntel;
			end;
		if (race='1') and (clas='4') then
			begin
				Str:=HumStr+PriStr;
				Agil:=HumAgil+PriAgil;
				Intel:=HumIntel+PriIntel;
			end;
			
		if (race='2') and (clas='1') then
			begin
				Str:=OrcStr+WarStr;
				Agil:=OrcAgil+WarAgil;
				Intel:=OrcIntel+WarIntel;
			end;
		if (race='2') and (clas='2') then
			begin
				Str:=OrcStr+MagStr;
				Agil:=OrcAgil+MagAgil;
				Intel:=OrcIntel+MagIntel;
			end;
		if (race='2') and (clas='3') then
			begin
				Str:=OrcStr+ArcStr;
				Agil:=OrcAgil+ArcAgil;
				Intel:=OrcIntel+ArcIntel;
			end;			
		if (race='2') and (clas='4') then
			begin
				Str:=OrcStr+PriStr;
				Agil:=OrcAgil+PriAgil;
				Intel:=OrcIntel+PriIntel;
			end;
			
		if (race='3') and (clas='1') then
			begin
				Str:=UndStr+WarStr;
				Agil:=UndAgil+WarAgil;
				Intel:=UndIntel+WarIntel;
			end;
		if (race='3') and (clas='2') then
			begin
				Str:=UndStr+MagStr;
				Agil:=UndAgil+MagAgil;
				Intel:=UndIntel+MagIntel;
			end;
		if (race='3') and (clas='3') then
			begin
				Str:=UndStr+ArcStr;
				Agil:=UndAgil+ArcAgil;
				Intel:=UndIntel+ArcIntel;
			end;
		if (race='3') and (clas='4') then
			begin
				Str:=UndStr+PriStr;
				Agil:=UndAgil+PriAgil;
				Intel:=UndIntel+PriIntel;
			end;
		if (race='4') and (clas='1') then
			begin
				Str:=ElfStr+WarStr;
				Agil:=ElfAgil+WarAgil;
				Intel:=ElfIntel+WarIntel;
			end;
		if (race='4') and (clas='2') then
			begin
				Str:=ElfStr+MagStr;
				Agil:=ElfAgil+MagAgil;
				Intel:=ElfIntel+MagIntel;
			end;
		if (race='4') and (clas='3') then 
			begin
				Str:=ElfStr+ArcStr;
				Agil:=ElfAgil+ArcAgil;
				Intel:=ElfIntel+ArcIntel;
			end;
		if (race='4') and (clas='4') then
		begin
			Str:=ElfStr+PriStr;
			Agil:=ElfAgil+PriAgil;
			Intel:=ElfIntel+PriIntel;
		end;
		
		damage:=Str+WeaponDam;
		mana:=mana+Intel;
	end;
	
	
procedure item();
	begin
		clrscr;		
		forrestpicture();
		textcolor(7);
		fillitems();
		writeln('Καθώς περπατάς για το δάσος βλέπεις έναν ιππότη ξαπλωμένο.');
		writeln('Μόλις φτάνεις ακόμα πιο κοντά αντιλαμβάνεσαι ότι δεν είναι πλέον ζωντανός...');
		writeln('Και ενώ είσαι έτοιμος να συνεχίσεις για τον προορισμό σου, παρατηρείς ότι το όπλο του είναι λίγα μέτρα μακριά του.');
		writeln('Το όπλο του είναι ένα ',items[i],'. Τώρα είναι δικό σου!');
		writeln();
		writeln('Πάτησε <Enter> για να συνεχίσεις.');
		readln();
		weapon:=true;
	end;
	
	
procedure cavebattle();
var a, b:integer;
	begin
	repeat
	DragonPow:=300;
	DragonDam:=40;
	life:=life;
			repeat
			dragonpicture2();
			textcolor(7);
			write('Το υπόλοιπο ζωής σου είναι ');
			textcolor(13);
			write(life);
			textcolor(7);
			write('   Το υπόλοιπο ζωής του δράκου είναι ', DragonPow);
			writeln();
			writeln('Πάτησε <Enter> για να προχωρήσει η μάχη.':60);
			readln();
			writeln();			
			a:=random(6);
			b:=random(6);			
				if (a>=b) then
					begin
						DragonPow:=DragonPow-damage;
						writeln('Καλό χτύπημα!':45);
						delay(1000);
						clrscr;
					end;
				if (a<b) then 
						begin
							Life:=Life-DragonDam;
							Writeln('Πρέπει να προσέχεις περισσότερο!':55);
							delay(1000);
							clrscr;
						end;
		until (life<=0) or (DragonPow<=0);
			if (life<=0) then 
				begin
					defeat();
					readln();
					clrscr;
				end;
			if (DragonPow<=0) then
				begin
					levelup();
					trophy();
					writeln('Πολύ καλή δουλειά! Νίκησες το δράκο.');
					writeln('Κέρδισες μία ασπίδα.');
					writeln('Το επίπεδό σου είναι πλέον ', level, ' και τα στατιστικά σου αναβαθμίστηκαν.'); 
					writeln('Πάτησε <Enter> για να συνεχίσεις');
					readln();
					clrscr;
					shield:=true;
					win3:=true;
				end;
	until (Xp=300);
	end;
	
	
procedure forrestbattle();
var a, b:integer;
	begin
		repeat
		KnightPow:=200;
		KnightDam:=30;
		life:=life;
			repeat
			knightpicture1();
			textcolor(7);
			write('Το υπόλοιπο ζωής του ιππότη είναι ', KnightPow);
			write('Το υπόλοιπο ζωής σου είναι ':35);
			textcolor(13);
			writeln(life);
			textcolor(7);
			writeln();
			writeln('Πάτησε <Enter> για να προχωρήσει η μάχη.':60);
			readln();
			writeln();		
			a:=random(6);
			b:=random(6);			
				if (a>=b) then
					begin
						KnightPow:=KnightPow-damage;
						writeln('Καλό χτύπημα!':45);
						delay(1000);
						clrscr;
					end;
				if (a<b) then 
						begin
							Life:=Life-KnightDam;
							Writeln('Πρέπει να προσέχεις περισσότερο!':55);
							delay(1000);
							clrscr;
						end;
		until (life<=0) or (KnightPow<=0);
			if (life<=0) then
				begin
					defeat();
					readln();
					clrscr;
				end;
			if (KnightPow<=0) then
				begin
					levelup();
					trophy();
					writeln('Πολύ καλή δουλειά! Νίκησες τον ιππότη.');
					writeln('Κέρδισες μια πανοπλία.');
					writeln('Το επίπεδό σου είναι πλέον ', level, ' και τα στατιστικά σου αναβαθμίστηκαν.'); 
					writeln('Πάτησε <Enter> για να συνεχίσεις');
					readln();
					clrscr;
					armor:=true;
					win2:=true;
				end;
	until (Xp=200);			
	end;
	
	
procedure lakebattle();
var a, b:integer;
	begin
		repeat
		WolfPow:=100;
		WolfDam:=10;
		life:=life;
			repeat
			wolfpicture3();
			textcolor(7);
			write('Το υπόλοιπο ζωής του λύκου είναι ', WolfPow);
			write('Το υπόλοιπο ζωής σου είναι ':35);
			textcolor(13);
			writeln(life);
			textcolor(7);
			writeln('Πάτησε <Enter> για να προχωρήσει η μάχη.':60);
			readln();
			writeln();			
			a:=random(6);
			b:=random(6);			
				if (a>=b) then
					begin
						WolfPow:=WolfPow-damage;
						writeln('Καλό χτύπημα!':45);
						delay(1000);
						clrscr;
					end;
				if (a<b) then 
						begin
							Life:=Life-WolfDam;
							Writeln('Πρέπει να προσέχεις περισσότερο!':55);
							delay(1000);
							clrscr;
						end;
		until (life<=0) or (WolfPow<=0);
			if (life<=0) then
				begin
					defeat();
					readln();
					clrscr;
				end;
			if (WolfPow<=0) then
				begin
					levelup();
					trophy();
					writeln('Νίκησες το λύκο.');
					writeln('Τώρα μπορείς να πάρεις το σπαθί.');
					writeln('Το επίπεδό σου είναι πλέον ', level, ' και τα στατιστικά σου αναβαθμίστηκαν.'); 
					writeln('Πάτησε <Enter> για να συνεχίσεις');
					readln();
					clrscr;
					sword:=true;
					win1:=true;
				end;
	until (Xp=100);
	end;
	
	
procedure villagebattle();
var a, b:integer;
	begin
		repeat
		WizardPow:=500;
		WizardDam:=50;
		life:=life;
			repeat
			wizardpicture2();
			textcolor(7);
			write('Το υπόλοιπο ζωής του μάγου είναι ', WizardPow);
			write('Το υπόλοιπο ζωής σου είναι ':35);
			textcolor(13);
			writeln(life);
			textcolor(7);
			writeln('Πάτησε <Enter> για να προχωρήσει η μάχη.':60);
			readln();
			writeln();			
			a:=random(6);
			b:=random(6);			
				if (a>=b) then
					begin
						WizardPow:=WizardPow-damage;
						writeln('Καλό χτύπημα!':45);
						delay(1000);
						clrscr;
					end;
				if (a<b) then 
						begin
							Life:=Life-WizardDam;
							Writeln('Πρέπει να προσέχεις περισσότερο!':55);
							delay(1000);
							clrscr;
						end;
		until (life<=0) or (WizardPow<=0);
			if (life<=0) then
				begin
					defeat();
					readln();
					clrscr;
				end;
			if (WizardPow<=0) then
				begin
					levelup();
					writeln('Πολύ καλή δουλειά! Νίκησες το μάγο.');
					writeln('Το επίπεδό σου είναι πλέον ', level, ' και τα στατιστικά σου αναβαθμίστηκαν.');
					delay(2000);
					clrscr;
					award();
					delay(4000);
					clrscr;
					credits();
					delay(4000);
					writeln('Πάτησε <Enter> για να συνεχίσεις');
					readln();
					clrscr;
					elixir:=true;
					win4:=true;
				end;
	until (Xp=400);
	end;
	
	
procedure castle();
	begin
		sitemain();
		textcolor(7);
		writeln('Κινείσαι προς το κάστρο...');
		delay(2000);
		clrscr;
		castlepicture();				
		writeln('Εδώ στη Zathura μπορείς να ξεκουραστείς ήρεμος .');
		delay(4000);
		clrscr;
	end;


procedure cave();
var yon:char;
	begin
		dragonpicture1();
		textcolor(7);
		writeln('Πριν καλά-καλά μπεις στη σπηλιά βλέπεις ένα τεράστιο δράκο.');
		writeln('Φοβάμαι πως θα πρέπει να βάλεις τα δυνατά σου για ακόμα μια φορά.');
		delay(5000);
		clrscr;
		repeat
			dragonpicture1();
			writeln('Θες να τον αντιμετωπίσεις; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of 
			#205, #237, #78, #110:
				begin
					clrscr;
					cavebattle();
				end;							
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();	
			end;
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);
	end;
	
	
procedure forrest();
var yon:char;
	begin
		knightpicture2();
		textcolor(7);
		writeln('Περπατώντας στο δάσος ένας ιππότης εμφανίζεται από το βάθος....');
		writeln('...καταλαβαίνεις πως έρχεται κατά πάνω σου για επίθεση...');
		writeln('...έτσι και εσύ σφίγγεις όσο πιο δυνατά μπορείς τη λαβή του όπλου σου..');
		delay(8000);
		clrscr;
		repeat
			knightpicture2();
			writeln('Θες να τον αντιμετωπίσεις; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of 
			#205, #237, #78, #110:
				begin
					clrscr;
					forrestbattle();
				end;							
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();	
			end;
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);	
	end;
	
	
procedure lake();
var yon:char;
	begin
		wolfpicture2();
		textcolor(7);
		writeln('Κάνοντας τη βόλτα σου στη λίμνη βλέπεις ένα σπαθί να είναι βυθισμένο σε αυτήν λίγα μέτρα μακριά απ΄ τη στεριά.');
		delay(2000);
		writeln('Πριν προλάβεις να το πάρεις ένας λύκος κάνει την εμφάνισή του.');
		delay(4000);
		clrscr;
		wolfpicture1();
		textcolor(7);
		writeln('Αντιλαμβάνεται την παρουσία σου και αρχίζει να μοιάζει απειλητικός.');
		delay(3000);
		clrscr;
			repeat	
				wolfpicture1();	
				textcolor(7);
				writeln('Θες να παλέψεις μαζι του για να πάρεις το σπαθί; (Ν)αι ή (Ό)χι;');
				yon:=readkey;
				case yon of
				#205, #237, #78, #110:	
					begin
						clrscr;
						lakebattle();
					end;
				#207, #239, #79, #111:	clrscr;
				else wrongbutton();		
				end;
			until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);	
	end;
	
	
procedure village();
var yon:char;
	begin
		wizardpicture1();
		textcolor(7);
		writeln('Προχωρώντας προς το χωριό ο μάγος ο οποίος ευθύνεται για τις χιλιάδες σφαγές αμάχων αλλά και πολεμιστών παρουσιάζεται στην πύλη του χωριού.');
		writeln('Σε περιμένει εδώ και κάποιο διάστημα για μία μάχη μέχρι τελικής πτώσεως.');
		delay(5000);
		clrscr;
		repeat
			wizardpicture1();
			writeln('Θες να τον αντιμετωπίσεις; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of 
			#205, #237, #78, #110:
				begin
					clrscr;
					villagebattle();
				end;							
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();	
			end;
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);	
	end;
	
							
procedure north();
var yon:char;
	begin
		LocName:='Σπηλιά';
		DirName:='Βόρεια';
		sitemain();
		textcolor(7);
		writeln('Κινείσαι βόρεια...');
		delay(2000);
		clrscr;
		cavepicture();				
		writeln('Αρχίζει και αχνοφαίνεται μία σπηλιά.');
		delay(4000);
		clrscr;
		repeat
			cavepicture();	
			textcolor(13);
			write(player);
			textcolor(7);
			writeln(' θέλεις να μπεις στη σπηλιά για να την εξερευνήσεις; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of
			#205, #237, #78, #110:
				begin
					clrscr;
					if (Xp=200) then cave()
					else
						begin
							cavepicture();
							writeln('Δεν δείχνει να υπάρχει κάποιος ή κάτι εδώ, παρ`όλα αυτά βλέπεις σάρκες από φαγωμένους ανθρώπους και ζώα, σκόρπια μέσα στην σπηλιά.');
							writeln('Ίσως είναι καλύτερα να επιστρέψεις ενώ έχεις εξασκηθεί πρώτα και άλλο στη μάχη.');
							delay(6000);
							clrscr;
						end;
				end;							
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();
			end;						
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);
	end;
	
	
procedure south();
var yon:char;
	begin
		LocName:='Δάσος';
		DirName:='Νότια';
		sitemain1();
		textcolor(7);
		writeln('Κινείσαι νότια...');
		delay(2000);
		clrscr;
		forrestpicture();
		writeln('Μετά από ώρα βλέπεις το δάσος.');
		delay(4000);
		clrscr;
		repeat
			forrestpicture();
			textcolor(13);
			write(player);
			textcolor(7);
			writeln(' θέλεις να περπατήσεις μέσα στο δάσος; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of 
			#205, #237, #78, #110:
				begin
					if weapon=false then item();
					clrscr;
					if (Xp=100) then forrest()
					else
						begin
							forrestpicture();
							writeln('Όλα είναι ήσυχα εδώ. Μπορείς να κάνεις άνετα τη βόλτα σου.');
							writeln('Πιθανόν με λίγη εξάσκηση να βρεις και εδώ κάτι ενδιαφέρον.');
							delay(6000);
							clrscr;
						end;							
				end;							
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();
			end;						
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);
	end;
	
	
procedure west();
var yon:char;
	begin
		LocName:='Λίμνη';
		DirName:='Δυτικά';
		sitemain();
		textcolor(7);
		writeln ('Κινείσαι δυτικά...');
		delay(2000);
		clrscr;
		lakepicture();	
		writeln ('Σε λίγα λεπτά πλησιάζεις τη λίμνη.');
		delay(4000);
		clrscr;
		repeat
			lakepicture();
			textcolor(13);
			write(player);
			textcolor(7);
			writeln(' έφτασες στη λίμνη. Θέλεις να κάνεις βόλτα γύρω από αυτήν; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of
			#205, #237, #78, #110:
				begin
					clrscr;
					if (Xp=0) then lake()
					else
						begin
							lakepicture1();
							delay(6000);
							clrscr;
						end;
				end;
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();
			end;	
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);
	end;
		

procedure east();
var yon:char;
	begin
		LocName:='Χωριό';
		DirName:='Ανατολκά';
		sitemain1();
		textcolor(7);
		writeln ('Κινείσαι ανατολικά...');
		delay(2000);
		clrscr;
		villagepicture();
		writeln ('Στο βάθος βλέπεις το χωριό.');
		delay(4000);
		clrscr;
		repeat
			villagepicture();
			textcolor(13);
			write(player);
			textcolor(7);
			writeln(' θέλεις να εξερευνήσεις τα μέρη του χωριού; (Ν)αι ή (Ό)χι;');
			yon:=readkey;
			case yon of 
			#205, #237, #78, #110:
				begin
					clrscr;
					if (Xp=300) then village()
					else
						begin
							villagepicture();
							textcolor(7);
							writeln('"Τι μπορεί να έχει γίνει σε αυτόν τον τόπο...." αναρωτιέσαι?');
							writeln('Πώς είναι δυνατόν να έχει ερημώσει ένα ολόκληρο χωριό.');
							writeln('Σίγουρα είναι δουλεία του Αρχιμάγου που προσπαθεί να κυριαρχήσει σε όλα τα ζωντανά και νεκρά πλάσματα με το "ελιξίριο της ζωής"');
							delay(8000);
							clrscr;
						end;
				end;							
			#207, #239, #79, #111:	clrscr;
			else wrongbutton();
			end;						
		until (yon=#205) or (yon=#237) or (yon=#78) or (yon=#110) or (yon=#207) or (yon=#239) or (yon=#79) or (yon=#111);
	end;
	
	
procedure escenter();		//Επιλογή παιχνίδι ή έξοδο
var key:char;
	begin
		repeat
			begin
				writeln ('Πάτησε <Enter> για να ξεκινήσεις το παιχνίδι ή <Esc> για να το τερματίσεις;');
				key:=readkey;
				clrscr;
	
			case key of
			#13, #0, #28:
				begin
					writeln ('Η περιπετεια ξεκινά ! ! !':50);
					delay(2000);
					clrscr;
				end;
			#27:
				begin
					repeat
						writeln ('Είσαι σίγουρος οτι θέλεις να τερματίσεις το παινιδι; (Ν)αι ή (Ό)χι');
						yesorno:=readkey;	
						clrscr;
						case yesorno of
						#205, #237, #78, #110:
							begin
								writeln ('Τερματισμός Παιχνιδιού...':50);
								delay(2000);
								credits();
								delay(2000);
								clrscr;
								halt;
							end;
						#207, #239, #79, #111:
							begin
								writeln ('Η περιπετεια ξεκινά ! ! !':50);
								delay(2000);
								clrscr;
							end
						else wrongbutton();
						end;
						until (yesorno=#205) or (yesorno=#237) or (yesorno=#78) or (yesorno=#110) or (yesorno=#207) or (yesorno=#239) or (yesorno=#79) or (yesorno=#111);
				end;
			else wrongbutton();
			end;
			end;
		until (key=#13) or (key=#27) or (key=#0) or (key=#28);
	end;


procedure playername();
var key:char;
	begin
		repeat
			backround();
			textcolor(7);
			write('Γραψε το όνομα που θες να χρησιμοποιείς στο παιχνίδι.  ');
			textcolor(13);
			readln(player);
			clrscr;
			backround();
			textcolor(7);
			write('Συμφωνείς με το όνομα ');
			textcolor(13);
			writeln(player);
			writeln();
			textcolor(7);
			writeln('Πάτησε <Enter> για να συνεχίσεις ή οποιοδήποτε άλλο πλήκτρο για να αλλάξεις το ονομά σου.');
			key:=readkey;
			clrscr;
			case key of
			#13, #0, #28:
				begin
					backround();
					write('Το ονομά σου είναι ');
					textcolor(13);
					writeln(player);
					delay(2000);
					clrscr;
				end;
			else
				begin
					backround();
					writeln('Προσπάθησε ξανά!');
					delay(2000);
					clrscr;
				end;
			end;
		until (key=#13) or (key=#0) or (key=#28);
	end;
	
	
	
begin
	cursoroff;
	randomize();
	//Εισαγωγή
	intro();
	//Βρόγχος επανάληψης μέχρι ο χρήστης να επιλέξει Έξοδο <Esc>
	repeat	 
	intro2();
	//Επιλογή για παιχνίδι ή έξοδο
	escenter();		
	//Κείμενο
	backround();
	textcolor(7);
	textbackground(0);
	write('Φήμες θέλουν δαιμονικές δραστηριότητες που παρατηρήθηκαν στο Σκοτεινό Χωριό να έχουν φτάσει στην επιφάνεια, όπως μαρτυρούν ψίθυροι και σιωπηλές ιστορίες βίας. Ο βασιλιάς στέλνει τον καλύτερο στρατιώτη του..............');
	delay(5000);
	write('....................');
	delay(1000);
	write('..............χμμμμ.....???.................');
	writeln();
	delay(5000);
	clrscr;
	//Επιλογή ονόματος
	playername();	
	//Κείμενο
	backround();
	textcolor(7);
	write('...συνεπώς, ο Βασιλιάς στέλνει τον στρατιώτη ');
	textcolor(13);
	write(player);
	textcolor(7);
	writeln(' για να μάθει τι συμβαίνει κάτω από την επιφάνεια, αλλά γίνονται όλα ξεκάθαρα όταν ο άρχοντας των Όρκς λυμαίνεται το χωριό Μέντος');
	writeln('Ο αρχηγός των αθανάτων παίζει με τις αθώες ψυχές που έχουν την ατυχία να πλησιάζουν το Σκοτεινό Χωριό και δείχνει συνεχώς να κερδίζει δυνάμεις καθώς πλειάδες δαιμόνων παρελαύνουν έτοιμες να επιτεθούν στο βασίλειο των ανθρώπων.');
	writeln('Στα νότια ο γηραιότερος των ξωτικών προσπαθεί να προστατεύσει το δάσος και το λαό του φτιάχνοντας γραμμές άμυνας που ούτε ο καλύτερος πολεμιστής δεν θα μπορούσε να περάσει...');
	delay(12000);
	clrscr;
	castlepicture();
	textcolor(7);
	write('Μετά από μια κουραστική μάχη και αφού έχει επιβιώσει, ο ');
	textcolor(13);
	write(player);
	textcolor(7);
	writeln(' ,χωρίς να του έχει απομείνει τίποτα επιστέφει στα τείχοι του Κάστρου.');
	write('Αυτά τα τείχοι έχουν προφυλάξει τον πολιτισμό των..........');
	delay(2000);
	write('...................');
	delay(7000);
	clrscr;
	
	chooserace();	//Επιλογή Race
	chooseclass();	//Επιλογή Class
	stats();	//Πρώτος υπολογισμός στατιστικών παίκτη
	inventory();	//Στοιχεία παίκτη
	//Κείμενο
	castlepicture();
	textcolor(7);
	writeln('...(συνέχεια)...Μετά από μια κουραστική μάχη και αφού έχει επιβιώσει, ο ');
	textcolor(13);
	write(player);
	textcolor(7);
	writeln(' ,χωρίς να του έχει απομείνει τίποτα επιστέφει στα τείχοι του Κάστρου.');
	write('Αυτά τα τείχοι έχουν προφυλάξει τον πολιτισμό των ');
	write('',RaceName);
	textcolor(7);
	write(' για χιλιάδες χρόνια. Το Κάστρο προστατεύεται με εκατοντάδες τοξότες που υποστηρίζουν την περίμετρο, ενώ παράλληλα είναι σε θέση να αντέξει μια πολιορκία για 300 και πλέον μέρες!!!!');
	delay(2000);
	writeln('Αλλά αρκετά με αυτές τις ανοησίες......');
	write('....!@#%^....α ναι.....ο ');
	textcolor(13);
	write(player);
	textcolor(7);
	writeln(' βρίσκει τον εαυτό του χωρίς όπλο και πανοπλία στο μπροστινό μέρος της Μεγάλης Πύλης της Zathura. Ξέρει ότι οι πύλες του κάστρου ποτέ δεν θα άνοιγαν υπό τέτοιες συνθήκες ...!!!!');
	write('Προσπαθεί να χαλαρώσει το κράνος του.');
	delay(2000);
	write('.....');
	delay(2000);
	write('το κράνος σου');
	delay(1000);
	write('.....');
	delay(1000);
	write('εσύ προσπαθείς να χαλαρώσεις το κράνος σου.');
	delay(15000);
	clrscr;
	//Τοποθεσία εκκίνησης
	loc:=0;		
	
		repeat		//Βρόγχος επανάληψης μέχρι ο χρήστης να ολοκληρώσει την αποστολή
			case loc of		//Λογικός έλεγχος τοποθεσίας
			//Τοποθεσία Κάστρο
			0:		
			begin
				repeat		//Βρόγχος επανάληψης μέχρι ο χρήστης να δώσει μία σωστή επιλογή κατεύθυνσης
					LocName:='Κάστρο';
					castlepicture();
					textcolor(13);
					write(player);
					textcolor(white);
					writeln(' τι θα ήθελες να κάνεις;');
					writeln('ΕΠΙΛΟΓΗ ΚΙΝΗΣΗΣ');
					writeln('Πάτησε το αντίστοιχο πλήκτρο στο πληκτρολόγιο σου.');
					writeln('Κατευθύνσου (Β)όρεια Ή (Ν)ότια Ή (Α)νατολικά Ή (Δ)υτικά');
					writeln('Ψάξε την (π)εριοχή μπροστά από το κάστρο της ZathuRa.');
					writeln('Μετάβαση στα (σ)τοιχεία παίκτη και το (χ)άρτη');
					dir:=readkey;
					clrscr;
					case dir of		//Λογικός έλεγχος κατεύθυνσης
					#194, #226, #66, #98:
						begin
							loc:=1;	
							north();
						end;
					#205, #237, #78, #110:
						begin
							loc:=2;
							south();
						end;
					#196, #228, #68, #100:
						begin
							loc:=3;
							west();
						end;
					#193, #225, #65, #97:
						begin
							loc:=4;
							east();					
						end;
					#211, #243, #83, #115:
						begin
							inventory(); 
						end;
					#208, #240, #80, #112:
						begin
							landscape();
							delay(2000);
							clrscr;
						end;
					#215, #247, #88, #120:
						begin
						map();
						end;
					else
						wrongbutton();
					end;				
				until (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#208) or (dir=#240) or (dir=#80) or (dir=#112) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115) or (dir=#194) or (dir=#226) or (dir=#66) or (dir=#98) or (dir=#205) or (dir=#237) or (dir=#78) or (dir=#110) or (dir=#196) or (dir=#228) or (dir=#68) or (dir=#100) or (dir=#193) or (dir=#225) or (dir=#65) or (dir=#97) or (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115);	
			end;
			//Τοποθεσία Σπηλιά(Βόρρεια)
			1:			
			begin
				repeat		//Βρόγχος επανάληψης μέχρι ο χρήστης να μία δώσει σωστή επιλογή κατεύθυνσης
					cavepicture();
					textcolor(13);
					write(player);
					textcolor(white);
					writeln(' τι θα ήθελες να κάνεις;');
					writeln('ΕΠΙΛΟΓΗ ΚΙΝΗΣΗΣ');
					writeln('Πάτησε το αντίστοιχο πλήκτρο στο πληκτρολόγιο σου.');
					writeln('Κατευθύνσου (Ν)ότια Ή (Α)νατολικά Ή (Δ)υτικά Ή (Κ)άστρο.');
					writeln('Μετάβαση στα (σ)τοιχεία παίκτη και το (χ)άρτη');
					dir:=readkey;
					clrscr;
					case dir of		//Λογικός έλεγχος κατεύθυνσης
					#205, #237, #78, #110:
						begin
							loc:=2;
							south();					
						end;
					#196, #228, #68, #100:
						begin
							loc:=3;
							west();
						end;
					#193, #225, #65, #97:
						begin
							loc:=4;
							east();	
						end;
					#202, #234, #75, #107:
						begin
							loc:=0;
							castle();
						end;
					#211, #243, #83, #115:
						begin
							inventory(); 
						end;
					#215, #247, #88, #120:
						begin
							map();
						end
					else
						wrongbutton();
					end;
				until (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115) or (dir=#205) or (dir=#237) or (dir=#78) or (dir=#110) or (dir=#196) or (dir=#228) or (dir=#68) or (dir=#100) or (dir=#193) or (dir=#225) or (dir=#65) or (dir=#97) or (dir=#202) or (dir=#234) or (dir=#75) or (dir=#107) or (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115);	
			end;
			//Τοποθεσία Δάσος(Νότια)
			2:		
			begin
				repeat		//Βρόγχος επανάληψης μέχρι ο χρήστης να δώσει μία σωστή επιλογή κατεύθυνσης
					forrestpicture();
					textcolor(13);
					write(player);
					textcolor(white);
					writeln(' τι θα ήθελες να κάνεις;');
					writeln('ΕΠΙΛΟΓΗ ΚΙΝΗΣΗΣ');
					writeln('Πάτησε το αντίστοιχο πλήκτρο στο πληκτρολόγιο σου.');
					writeln('Κατευθύνσου (Β)όρεια Ή (Α)νατολικά Ή (Δ)υτικά Ή (Κ)άστρο');
					writeln('Μετάβαση στα (σ)τοιχεία παίκτη και το (χ)άρτη');
					dir:=readkey;
					clrscr;
					case dir of		//Λογικός έλεγχος κατεύθυνσης
					#194, #226, #66, #98:
						begin
							loc:=1;	
							north();
						end;
					#196, #228, #68, #100:
						begin
							loc:=3;
							west();
						end;
					#193, #225, #65, #97:
						begin
							loc:=4;
							east();	
						end;
					#202, #234, #75, #107:
						begin
							loc:=0;
							castle();
						end;
					#211, #243, #83, #115:
						begin
							inventory(); 
						end;
					#215, #247, #88, #120:
						begin
							map();
						end;
					else
						wrongbutton();
					end;
				until (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115) or (dir=#194) or (dir=#226) or (dir=#66) or (dir=#98) or (dir=#196) or (dir=#228) or (dir=#68) or (dir=#100) or (dir=#193) or (dir=#225) or (dir=#65) or (dir=#97) or (dir=#202) or (dir=#234) or (dir=#75) or (dir=#107) or (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115);	
			end;
			//Τοποθεσία Λίμνη(Δυτικά)
			3:
			begin	
				repeat		//Βρόγχος επανάληψης μέχρι ο χρήστης να δώσει μία σωστή επιλογή κατεύθυνσης
					lakepicture2();
					dir:=readkey;
					clrscr;	
					case dir of		//Λογικός έλεγχος κατεύθυνσης
					#194, #226, #66, #98:
						begin
							loc:=1;	
							north();
						end;
					#205, #237, #78, #110:
						begin
							loc:=2;
							south();
						end;
					#193, #225, #65, #97:
						begin
							loc:=4;
							east();	
						end;
					#202, #234, #75, #107:
						begin
							loc:=0;
							castle();
					 	end;
					#211, #243, #83, #115:
						begin
							inventory(); 
						end;
					#215, #247, #88, #120:
						begin
							map();
						end;
					else
						wrongbutton();
					end;
				until (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115) or (dir=#194) or (dir=#226) or (dir=#66) or (dir=#98) or (dir=#205) or (dir=#237) or (dir=#78) or (dir=#110) or (dir=#193) or (dir=#225) or (dir=#65) or (dir=#97) or (dir=#202) or (dir=#234) or (dir=#75) or (dir=#107) or (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115);	
			end;
			//Τοποθεσία Χωριό(Ανατολικά)
			4:
			begin	
				repeat		//Βρόγχος επανάληψης μέχρι ο χρήστης να δώσει μία σωστή επιλογή κατεύθυνσης
					villagepicture();
					textcolor(13);
					write(player);
					textcolor(white);
					writeln(' τι θα ήθελες να κάνεις;');
					writeln('ΕΠΙΛΟΓΗ ΚΙΝΗΣΗΣ');
					writeln('Πάτησε το αντίστοιχο πλήκτρο στο πληκτρολόγιο σου.');
					writeln('Κατευθύνσου (Β)όρεια Ή (Ν)ότια Ή (Δ)υτικά Ή (Κ)άστρο');
					writeln('Μετάβαση στα (σ)τοιχεία παίκτη και το (χ)άρτη');
					dir:=readkey;
					clrscr;	
					case dir of		//Λογικός έλεγχος κατεύθυνσης
					#194, #226, #66, #98:
						begin
							loc:=1;
							north();
					
						end;
					#205, #237, #78, #110:
						begin
							loc:=2;
							south();
						end;
					#196, #228, #68, #100:
						begin
							loc:=3;
							west();
						end;
					#202, #234, #75, #107:
						begin
							loc:=0;
							castle();				 
						end;
					#211, #243, #83, #115:
						begin
					 		inventory(); 
						end;
					#215, #247, #88, #120:
						begin
							map();
						end;			
					else
						wrongbutton();
					end;
				until (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115) or (dir=#194) or (dir=#226) or (dir=#66) or (dir=#98) or (dir=#205) or (dir=#237) or (dir=#78) or (dir=#110) or (dir=#196) or (dir=#228) or (dir=#68) or (dir=#100) or (dir=#202) or (dir=#234) or (dir=#75) or (dir=#107) or (dir=#215) or (dir=#247) or (dir=#88) or (dir=#120) or (dir=#211) or (dir=#243) or (dir=#83) or (dir=#115);	
			end;
		
					
			end;
			until (Xp=400);
		until (yesorno=#205) or (yesorno=#237) or (yesorno=#78) or (yesorno=#110);
	
end.