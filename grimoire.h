/**
* @file grimoire.h
* @author Vin�cius da Costa de Andrade <andradecostavinicius@gmail.com>
*/

#ifndef GRIMOIRE_H
#define GRIMOIRE_H

#include <fstream>

class Grimoire {
	private:
		int quantity;
	public:
		Grimoire ();
		Monster* get(int i);
		void InsertMonster(Monster* monster);
		void RemoveMonster(Monster* Monster);
		bool isEmpty();
		int getQuantity();
};

#endif
