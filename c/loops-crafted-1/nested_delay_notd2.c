extern void __VERIFIER_error() __attribute__ ((__noreturn__));


//VERIFICATION RESULT : TRUE


int last ;
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
     ERROR: __VERIFIER_error();
  }
  return;
}

int nondet()
{
	int x;
	return x;
}

#define SIZE 20
int main() {
	last = nondet();
	__VERIFIER_assume(last > 0);
	int a=0,b=0,c=0,st=0,d=0,e=0,f=0;
	while(1) {
		st=1;  
		for(c=0;c<SIZE;c++) {
			if (c>=last)  { st = 0; }
		}
		if(st==0 && c==last+1){
			a+=3; b+=3;}
		else { a+=2; b+=2; } 
		if(c==last && st==0) { 
			a = a+1;
		}
		else if(st==1 && last>=SIZE) { 
			d++;
		}
		if(d == SIZE) {
			a = 0; 
			b = 1;
		}
			
		__VERIFIER_assert(a==b && c==SIZE);
	}
}
