program save;


	type 	LocName=(Castle, Cave, Forrest, Village, Lake);
		DirName=(North, South, East, West);
		Racerecord=record
	 	rname:string;
	 	rStr:integer;
	 	rAgil:integer;
	 	rIntel:integer;
	 	end;
	 Classrecord=record	
	 	cname:string;
	 	cStr:integer;
	 	cAgil:integer;
	 	cIntel:integer;
	 	end;

var 	player:string;
		yesorno:char;
		Str, Agil, Intel, Xp, life, mana, damage, level:integer;
		race, clas, dir:char; 
		loc:integer;
		WeaponStr, WeaponDam:integer;
		win1, win2, win3, win4:boolean;
		shield, sword, armor, elixir, potion, spear, arc, axe, bat, weapon:boolean;
		WolfDam, WolfPow, DragonPow, DragonDam, KnightPow, KnightDam, WizardPow, WizardDam:integer;
		items:array [1..4] of string;
		i:integer;
		w1, w2, w3, w4:string;
		e:boolean;
		races:Racerecord;
		classes:Classrecord;
		locn:LocName;
		dirn:DirName;
		Elixirfile:text;
		path:string;


begin
player:='Xaris';
races.rname:='asdfg';
races.rStr:=11;
races.rAgil:=22;
races.rIntel:=33;
classes.cname:='qwert';
classes.cStr:=44;
classes.cAgil:=55;
classes.cIntel:=66;
Str:=77;
Agil:=99;
Intel:=88;
Xp:=12;
life:=23;
mana:=34;
damage:=45;
level:=1;
loc:=0;
dir:='a';
win1:=true;
win2:=true;
win3:=true;
win4:=false;
path:='C:\Users\MARIA\Desktop\ElixirRec.txt';
		assign(Elixirfile, path);
		rewrite(Elixirfile);
		write(Elixirfile, player, races.rname, races.rStr, races.rAgil, races.rIntel, classes.cname, classes.cStr, classes.cAgil, classes.cIntel, 
				Str, Agil, Intel, Xp, life, mana, damage, level, loc, dir, win1, win2, win3, win4);		
		writeln('h egrafh egine');
		close(Elixirfile);
		
path:='C:\Users\MARIA\Desktop\ElixirRec.txt';
		assign(Elixirfile, path);
		reset(Elixirfile);
		read(Elixirfile, player, races.rname, races.rStr, races.rAgil, races.rIntel, classes.cname, classes.cStr, classes.cAgil, classes.cIntel, Str, Agil, Intel, Xp, life, mana, damage, level, loc, dir, win1, win2, win3, win4);
		close(Elixirfile);
	end.