domains
    disease,indication,name = symbol

predicates
    hypothesis(name,disease)
    symptom(name,indication)
    
clauses
    symptom(A,fever).
    symptom(A,rash).
    symptom(A,headache).
    symptom(A,runn_nose).
    
    symptom(B,chills).
    symptom(B,fever).
    symptom(B,headache).
    
    symptom(C,runny_nose).
    symptom(C,rash).
    symptom(C,flu).
    

    hypothesis(Patient,measles):-
        symptom(Patient,fever),
        symptom(Patient,cough),
        symptom(Patient,conjunctivitis),
        symptom(Patient,rash).
    
    hypothesis(Patient,german_measles) :-
        symptom(Patient,fever),
        symptom(Patient,headache),
        symptom(Patient,runny_nose),
        symptom(Patient,rash).
    
    hypothesis(Patient,flu) :-
        symptom(Patient,fever),
        symptom(Patient,headache),
        symptom(Patient,body_ache),
        symptom(Patient,chills).

    hypothesis(Patient,common_cold) :-
        symptom(Patient,headache),
        symptom(Patient,sneezing),
        symptom(Patient,sore_throat),
        symptom(Patient,chills),
        symptom(Patient,runny_nose).
        
    hypothesis(Patient,mumps) :-
        symptom(Patient,fever),
        symptom(Patient,swollen_glands).
    
    hypothesis(Patient,chicken_pox) :-
        symptom(Patient,fever),
        symptom(Patient,rash),
        symptom(Patient,body_ache),
        symptom(Patient,chills).
