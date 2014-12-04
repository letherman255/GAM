<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="GAM_V2">
  <ownedComment xmi:type="uml:Comment" xmi:id="_o61zwHoLEeS6tdLa-zuY3w" annotatedElement="_bxCcwCXMEd-dqNMA4nrGhQ">
    <body>parties prenentes</body>
  </ownedComment>
  <ownedComment xmi:type="uml:Comment" xmi:id="_sygB0noLEeS6tdLa-zuY3w" annotatedElement="_yMIJwCXMEd-dqNMA4nrGhQ">
    <body>bloc structurel (solutions techniques)</body>
  </ownedComment>
  <ownedComment xmi:type="uml:Comment" xmi:id="_4LU7QHoLEeS6tdLa-zuY3w" annotatedElement="_-Qa6sCXPEd-dqNMA4nrGhQ">
    <body>Tableau de vérification du diagrame block fonctionnel par rapport au diagrame des exigences.</body>
  </ownedComment>
  <ownedComment xmi:type="uml:Comment" xmi:id="_JlXTwnoNEeS6tdLa-zuY3w" annotatedElement="_-o3P4CXPEd-dqNMA4nrGhQ">
    <body>Tableau de vérification du diagrame block structurel par rapport au fonctionnel.</body>
  </ownedComment>
  <packagedElement xmi:type="uml:Package" xmi:id="idPackage" name="logicalView">
    <packageImport xmi:type="uml:PackageImport" xmi:id="_uM5wkCXLEd-dqNMA4nrGhQ" importedPackage="_Ft7nYCXLEd-dqNMA4nrGhQ"/>
    <packagedElement xmi:type="uml:Package" xmi:id="_beQgICXLEd-dqNMA4nrGhQ" name="useCases">
      <packagedElement xmi:type="uml:UseCase" xmi:id="_7EV9ECXLEd-dqNMA4nrGhQ" name="UseCase1" classifierBehavior="_-FbvgCXLEd-dqNMA4nrGhQ">
        <ownedBehavior xmi:type="uml:Activity" xmi:id="_-FbvgCXLEd-dqNMA4nrGhQ" name="UseCase1Detail">
          <ownedAttribute xmi:type="uml:Property" xmi:id="_hQ-awCXNEd-dqNMA4nrGhQ" name="Property1" type="_n6IVgiXMEd-dqNMA4nrGhQ"/>
          <ownedAttribute xmi:type="uml:Property" xmi:id="_kNU3ICXNEd-dqNMA4nrGhQ" name="Property2" type="__k8lACXMEd-dqNMA4nrGhQ"/>
          <node xmi:type="uml:InitialNode" xmi:id="_llF7UCXNEd-dqNMA4nrGhQ" name="InitialNode1" outgoing="_KQcB6iXOEd-dqNMA4nrGhQ" inPartition="_etXOgiXNEd-dqNMA4nrGhQ"/>
          <node xmi:type="uml:CallBehaviorAction" xmi:id="_JdeT4iXOEd-dqNMA4nrGhQ" name="a1" outgoing="_Nql0mSXOEd-dqNMA4nrGhQ" incoming="_KQcB6iXOEd-dqNMA4nrGhQ" inPartition="_etXOgiXNEd-dqNMA4nrGhQ" behavior="_CpwkYCXOEd-dqNMA4nrGhQ"/>
          <node xmi:type="uml:CallBehaviorAction" xmi:id="_MwLawiXOEd-dqNMA4nrGhQ" name="a2" incoming="_Nql0mSXOEd-dqNMA4nrGhQ" inPartition="_e2J-IiXNEd-dqNMA4nrGhQ" behavior="_DEbuMCXOEd-dqNMA4nrGhQ"/>
          <edge xmi:type="uml:ControlFlow" xmi:id="_KQcB6iXOEd-dqNMA4nrGhQ" name="ControlFlow1" source="_llF7UCXNEd-dqNMA4nrGhQ" target="_JdeT4iXOEd-dqNMA4nrGhQ">
            <guard xmi:type="uml:LiteralBoolean" xmi:id="_KQcB6yXOEd-dqNMA4nrGhQ" value="true"/>
            <weight xmi:type="uml:LiteralInteger" xmi:id="_KQcB7CXOEd-dqNMA4nrGhQ" value="1"/>
          </edge>
          <edge xmi:type="uml:ControlFlow" xmi:id="_Nql0mSXOEd-dqNMA4nrGhQ" name="ControlFlow2" source="_JdeT4iXOEd-dqNMA4nrGhQ" target="_MwLawiXOEd-dqNMA4nrGhQ">
            <guard xmi:type="uml:LiteralBoolean" xmi:id="_Nql0miXOEd-dqNMA4nrGhQ" value="true"/>
            <weight xmi:type="uml:LiteralInteger" xmi:id="_Nql0myXOEd-dqNMA4nrGhQ" value="1"/>
          </edge>
          <group xmi:type="uml:ActivityPartition" xmi:id="_etXOgiXNEd-dqNMA4nrGhQ" name="A" node="_llF7UCXNEd-dqNMA4nrGhQ _JdeT4iXOEd-dqNMA4nrGhQ" represents="_hQ-awCXNEd-dqNMA4nrGhQ"/>
          <group xmi:type="uml:ActivityPartition" xmi:id="_e2J-IiXNEd-dqNMA4nrGhQ" name="Sytem" node="_MwLawiXOEd-dqNMA4nrGhQ" represents="_kNU3ICXNEd-dqNMA4nrGhQ"/>
        </ownedBehavior>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_42UUYCXNEd-dqNMA4nrGhQ" name="UseCase2" classifierBehavior="_CpwkYCXOEd-dqNMA4nrGhQ">
        <ownedBehavior xmi:type="uml:Activity" xmi:id="_CpwkYCXOEd-dqNMA4nrGhQ" name="UseCase2Detail"/>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_5wbMMCXNEd-dqNMA4nrGhQ" name="UseCase3" classifierBehavior="_DEbuMCXOEd-dqNMA4nrGhQ">
        <ownedBehavior xmi:type="uml:Activity" xmi:id="_DEbuMCXOEd-dqNMA4nrGhQ" name="UseCase3Detail"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Actor" xmi:id="_V5zKUHDMEeSvY-8P7kxBvA" name="Joueur"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_eNrFAHDMEeSvY-8P7kxBvA" name="Admin_MDL"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_gr1wkHDMEeSvY-8P7kxBvA" name="Systeme_Multimedia"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_kgcDkHDMEeSvY-8P7kxBvA" name="Systeme_Gestion"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_ogweYHDMEeSvY-8P7kxBvA" name="Jouer" classifierBehavior="_Ho6CIHDNEeSvY-8P7kxBvA">
        <ownedBehavior xmi:type="uml:Interaction" xmi:id="_Ho6CIHDNEeSvY-8P7kxBvA" name="JouerDetail">
          <ownedComment xmi:type="uml:Comment" xmi:id="_oeRY0HDREeSvY-8P7kxBvA" annotatedElement="_cc4DgHDREeSvY-8P7kxBvA">
            <body>Login/mdp/Crédit</body>
          </ownedComment>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_IjO8YHDNEeSvY-8P7kxBvA" name="Utilisateur" coveredBy="_Ymr1E3DREeSvY-8P7kxBvA _0uNrAHDSEeSvY-8P7kxBvA _dfoEgHDSEeSvY-8P7kxBvA _4Z02kHDREeSvY-8P7kxBvA _-EpoMHDNEeSvY-8P7kxBvA"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_CpAkMHDOEeSvY-8P7kxBvA" name="Serveur" coveredBy="_Ymr1FHDREeSvY-8P7kxBvA _9hL8gHDSEeSvY-8P7kxBvA _kkue8HDSEeSvY-8P7kxBvA _dforkHDSEeSvY-8P7kxBvA _4Z0PgHDREeSvY-8P7kxBvA _elc5kHDREeSvY-8P7kxBvA _cc54s3DREeSvY-8P7kxBvA _Qc4R0HDQEeSvY-8P7kxBvA"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_EpLPsHDPEeSvY-8P7kxBvA" name="blocage manettes" coveredBy="_kkvGAHDSEeSvY-8P7kxBvA _9hKuYHDSEeSvY-8P7kxBvA _0uMc4HDSEeSvY-8P7kxBvA _p8MS4HDSEeSvY-8P7kxBvA _p8Lr0HDSEeSvY-8P7kxBvA _YtZronDSEeSvY-8P7kxBvA _p8J2oHDSEeSvY-8P7kxBvA"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_i5gaoHDPEeSvY-8P7kxBvA" name="Gestion utilisateur" coveredBy="_cc6fwHDREeSvY-8P7kxBvA _elcSg3DREeSvY-8P7kxBvA _cc4DgHDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_9hKuYHDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification17" covered="_EpLPsHDPEeSvY-8P7kxBvA" event="_9hL8gXDSEeSvY-8P7kxBvA" message="_9hL8gnDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_9hL8gHDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification18" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_9hL8gXDSEeSvY-8P7kxBvA" message="_9hL8gnDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_0uMc4HDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification15" covered="_EpLPsHDPEeSvY-8P7kxBvA" event="_0uOSEHDSEeSvY-8P7kxBvA" message="_0uOSEXDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_0uNrAHDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification16" covered="_IjO8YHDNEeSvY-8P7kxBvA" event="_0uOSEHDSEeSvY-8P7kxBvA" message="_0uOSEXDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_p8Lr0HDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification13" covered="_EpLPsHDPEeSvY-8P7kxBvA" event="_p8MS4XDSEeSvY-8P7kxBvA" message="_p8M58HDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_p8MS4HDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification14" covered="_EpLPsHDPEeSvY-8P7kxBvA" event="_p8MS4XDSEeSvY-8P7kxBvA" message="_p8M58HDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_kkue8HDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification11" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_kkvtEHDSEeSvY-8P7kxBvA" message="_kkvtEXDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_kkvGAHDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification12" covered="_EpLPsHDPEeSvY-8P7kxBvA" event="_kkvtEHDSEeSvY-8P7kxBvA" message="_kkvtEXDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_dfoEgHDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification9" covered="_IjO8YHDNEeSvY-8P7kxBvA" event="_dforkXDSEeSvY-8P7kxBvA" message="_dfpSoHDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_dforkHDSEeSvY-8P7kxBvA" name="MessageOccurrenceSpecification10" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_dforkXDSEeSvY-8P7kxBvA" message="_dfpSoHDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_4Z0PgHDREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification7" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_4Z02kXDREeSvY-8P7kxBvA" message="_4Z02knDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_4Z02kHDREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification8" covered="_IjO8YHDNEeSvY-8P7kxBvA" event="_4Z02kXDREeSvY-8P7kxBvA" message="_4Z02knDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_elcSg3DREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification5" covered="_i5gaoHDPEeSvY-8P7kxBvA" event="_elc5kXDREeSvY-8P7kxBvA" message="_elc5knDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_elc5kHDREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification6" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_elc5kXDREeSvY-8P7kxBvA" message="_elc5knDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_cc54s3DREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification3" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_cc6fwXDREeSvY-8P7kxBvA" message="_cc6fwnDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_cc6fwHDREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification4" covered="_i5gaoHDPEeSvY-8P7kxBvA" event="_cc6fwXDREeSvY-8P7kxBvA" message="_cc6fwnDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Ymr1E3DREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification1" covered="_IjO8YHDNEeSvY-8P7kxBvA" event="_YmscIHDREeSvY-8P7kxBvA" message="_YmscIXDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Ymr1FHDREeSvY-8P7kxBvA" name="MessageOccurrenceSpecification2" covered="_CpAkMHDOEeSvY-8P7kxBvA" event="_YmscIHDREeSvY-8P7kxBvA" message="_YmscIXDREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_-EpoMHDNEeSvY-8P7kxBvA" name="BehaviorExecutionSpecification1" covered="_IjO8YHDNEeSvY-8P7kxBvA" start="_Ymr1E3DREeSvY-8P7kxBvA" finish="_0uNrAHDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_Qc4R0HDQEeSvY-8P7kxBvA" name="BehaviorExecutionSpecification3" covered="_CpAkMHDOEeSvY-8P7kxBvA" start="_Ymr1FHDREeSvY-8P7kxBvA" finish="_9hL8gHDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_cc4DgHDREeSvY-8P7kxBvA" name="BehaviorExecutionSpecification2" covered="_i5gaoHDPEeSvY-8P7kxBvA" start="_cc6fwHDREeSvY-8P7kxBvA" finish="_elcSg3DREeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_YtZronDSEeSvY-8P7kxBvA" name="BehaviorExecutionSpecification4" covered="_EpLPsHDPEeSvY-8P7kxBvA" start="_kkvGAHDSEeSvY-8P7kxBvA" finish="_0uMc4HDSEeSvY-8P7kxBvA"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_p8J2oHDSEeSvY-8P7kxBvA" name="BehaviorExecutionSpecification5" covered="_EpLPsHDPEeSvY-8P7kxBvA" start="_p8MS4HDSEeSvY-8P7kxBvA" finish="_p8MS4HDSEeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_YmscIXDREeSvY-8P7kxBvA" name="jouer" receiveEvent="_Ymr1FHDREeSvY-8P7kxBvA" sendEvent="_Ymr1E3DREeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_cc6fwnDREeSvY-8P7kxBvA" name="Authentification" receiveEvent="_cc6fwHDREeSvY-8P7kxBvA" sendEvent="_cc54s3DREeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_elc5knDREeSvY-8P7kxBvA" name="Autorisation" messageSort="reply" receiveEvent="_elc5kHDREeSvY-8P7kxBvA" sendEvent="_elcSg3DREeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_4Z02knDREeSvY-8P7kxBvA" name="demande du n°de Manette désiré" messageSort="reply" receiveEvent="_4Z02kHDREeSvY-8P7kxBvA" sendEvent="_4Z0PgHDREeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_dfpSoHDSEeSvY-8P7kxBvA" name="Réponse utilisateur" receiveEvent="_dforkHDSEeSvY-8P7kxBvA" sendEvent="_dfoEgHDSEeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_kkvtEXDSEeSvY-8P7kxBvA" name="Ordre de déblocage" messageSort="asynchCall" receiveEvent="_kkvGAHDSEeSvY-8P7kxBvA" sendEvent="_kkue8HDSEeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_p8M58HDSEeSvY-8P7kxBvA" name="Déblocage" receiveEvent="_p8MS4HDSEeSvY-8P7kxBvA" sendEvent="_p8Lr0HDSEeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_0uOSEXDSEeSvY-8P7kxBvA" name="Confiermation de déblocage" messageSort="reply" receiveEvent="_0uNrAHDSEeSvY-8P7kxBvA" sendEvent="_0uMc4HDSEeSvY-8P7kxBvA"/>
          <message xmi:type="uml:Message" xmi:id="_9hL8gnDSEeSvY-8P7kxBvA" name="Démarrage du décompte" messageSort="reply" receiveEvent="_9hL8gHDSEeSvY-8P7kxBvA" sendEvent="_9hKuYHDSEeSvY-8P7kxBvA"/>
        </ownedBehavior>
        <include xmi:type="uml:Include" xmi:id="_8dsG4HDMEeSvY-8P7kxBvA" name="Include1" addition="_qtCIsHDMEeSvY-8P7kxBvA"/>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_qtCIsHDMEeSvY-8P7kxBvA" name="Authentifier">
        <include xmi:type="uml:Include" xmi:id="_01PHwHDMEeSvY-8P7kxBvA" name="Include1" addition="_ogweYHDMEeSvY-8P7kxBvA"/>
        <include xmi:type="uml:Include" xmi:id="_8xw5cHDMEeSvY-8P7kxBvA" name="Include2" addition="_sDGjwHDMEeSvY-8P7kxBvA"/>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_sDGjwHDMEeSvY-8P7kxBvA" name="Inscription" classifierBehavior="_lZV7EHGIEeSvZfb17d9O-Q">
        <ownedBehavior xmi:type="uml:Interaction" xmi:id="_lZV7EHGIEeSvZfb17d9O-Q" name="InscriptionDetail">
          <lifeline xmi:type="uml:Lifeline" xmi:id="_l7zH4HGIEeSvZfb17d9O-Q" name="Administrateur" coveredBy="_-5etcHGIEeSvZfb17d9O-Q _hWWxUHGJEeSvZfb17d9O-Q _SU0EwHGJEeSvZfb17d9O-Q _KbWOIXGJEeSvZfb17d9O-Q _yTk84HGIEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_oHhYkHGIEeSvZfb17d9O-Q" name="Gestion utilisateur" coveredBy="_DmhEUHGJEeSvZfb17d9O-Q _V0RYwHGKEeSvZfb17d9O-Q _TigxgHGKEeSvZfb17d9O-Q _Gspu0HGJEeSvZfb17d9O-Q _3qqWUHGIEeSvZfb17d9O-Q _PteZoHGKEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_rSxMkHGIEeSvZfb17d9O-Q" name="Serveur" coveredBy="_-5etcXGIEeSvZfb17d9O-Q _V0R_0HGKEeSvZfb17d9O-Q _TigKcHGKEeSvZfb17d9O-Q _hWWKQHGJEeSvZfb17d9O-Q _SU0r0HGJEeSvZfb17d9O-Q _KbWOIHGJEeSvZfb17d9O-Q _GsqV4HGJEeSvZfb17d9O-Q _DmgdQHGJEeSvZfb17d9O-Q _4bCqYHGIEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_V0RYwHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification15" covered="_oHhYkHGIEeSvZfb17d9O-Q" event="_V0R_0XGKEeSvZfb17d9O-Q" message="_V0TN8HGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_V0R_0HGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification16" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_V0R_0XGKEeSvZfb17d9O-Q" message="_V0TN8HGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_TigKcHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification11" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_TigxgXGKEeSvZfb17d9O-Q" message="_TihYkHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_TigxgHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification12" covered="_oHhYkHGIEeSvZfb17d9O-Q" event="_TigxgXGKEeSvZfb17d9O-Q" message="_TihYkHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_hWWKQHGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification13" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_hWWxUXGJEeSvZfb17d9O-Q" message="_hWX_cHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_hWWxUHGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification14" covered="_l7zH4HGIEeSvZfb17d9O-Q" event="_hWWxUXGJEeSvZfb17d9O-Q" message="_hWX_cHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_SU0EwHGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification9" covered="_l7zH4HGIEeSvZfb17d9O-Q" event="_SU0r0XGJEeSvZfb17d9O-Q" message="_SU1S4HGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_SU0r0HGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification10" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_SU0r0XGJEeSvZfb17d9O-Q" message="_SU1S4HGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_KbWOIHGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification7" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_KbW1MHGJEeSvZfb17d9O-Q" message="_KbXcQHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_KbWOIXGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification8" covered="_l7zH4HGIEeSvZfb17d9O-Q" event="_KbW1MHGJEeSvZfb17d9O-Q" message="_KbXcQHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Gspu0HGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification5" covered="_oHhYkHGIEeSvZfb17d9O-Q" event="_GsqV4XGJEeSvZfb17d9O-Q" message="_Gsq88HGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_GsqV4HGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification6" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_GsqV4XGJEeSvZfb17d9O-Q" message="_Gsq88HGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_DmgdQHGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification3" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_DmhEUXGJEeSvZfb17d9O-Q" message="_DmhrYHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_DmhEUHGJEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification4" covered="_oHhYkHGIEeSvZfb17d9O-Q" event="_DmhEUXGJEeSvZfb17d9O-Q" message="_DmhrYHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_-5etcHGIEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification1" covered="_l7zH4HGIEeSvZfb17d9O-Q" event="_-5fUgHGIEeSvZfb17d9O-Q" message="_-5f7kHGIEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_-5etcXGIEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification2" covered="_rSxMkHGIEeSvZfb17d9O-Q" event="_-5fUgHGIEeSvZfb17d9O-Q" message="_-5f7kHGIEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_yTk84HGIEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification1" covered="_l7zH4HGIEeSvZfb17d9O-Q" start="_-5etcHGIEeSvZfb17d9O-Q" finish="_hWWxUHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_3qqWUHGIEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification2" covered="_oHhYkHGIEeSvZfb17d9O-Q" start="_DmhEUHGJEeSvZfb17d9O-Q" finish="_Gspu0HGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_4bCqYHGIEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification3" covered="_rSxMkHGIEeSvZfb17d9O-Q" start="_-5etcXGIEeSvZfb17d9O-Q" finish="_hWWKQHGJEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_PteZoHGKEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification5" covered="_oHhYkHGIEeSvZfb17d9O-Q" start="_TigxgHGKEeSvZfb17d9O-Q" finish="_V0RYwHGKEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_-5f7kHGIEeSvZfb17d9O-Q" name="Ajouter utilisateur" receiveEvent="_-5etcXGIEeSvZfb17d9O-Q" sendEvent="_-5etcHGIEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_DmhrYHGJEeSvZfb17d9O-Q" name="Authentification" receiveEvent="_DmhEUHGJEeSvZfb17d9O-Q" sendEvent="_DmgdQHGJEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_Gsq88HGJEeSvZfb17d9O-Q" name="Autoriser" messageSort="reply" receiveEvent="_GsqV4HGJEeSvZfb17d9O-Q" sendEvent="_Gspu0HGJEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_KbXcQHGJEeSvZfb17d9O-Q" name="MDL id ? Nom ? Type (administrateur, Modérateur, utilisateur)" receiveEvent="_KbWOIXGJEeSvZfb17d9O-Q" sendEvent="_KbWOIHGJEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_SU1S4HGJEeSvZfb17d9O-Q" name="MDL id, nom, type (administrateur, modérateur, utilisateur)" messageSort="reply" receiveEvent="_SU0r0HGJEeSvZfb17d9O-Q" sendEvent="_SU0EwHGJEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_hWX_cHGJEeSvZfb17d9O-Q" name="Confiermation administrateur" messageSort="asynchCall" receiveEvent="_hWWxUHGJEeSvZfb17d9O-Q" sendEvent="_hWWKQHGJEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_TihYkHGKEeSvZfb17d9O-Q" name="Enregistrer les informations" receiveEvent="_TigxgHGKEeSvZfb17d9O-Q" sendEvent="_TigKcHGKEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_V0TN8HGKEeSvZfb17d9O-Q" name="Confiermation serveur" messageSort="reply" receiveEvent="_V0R_0HGKEeSvZfb17d9O-Q" sendEvent="_V0RYwHGKEeSvZfb17d9O-Q"/>
        </ownedBehavior>
      </packagedElement>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_uCb-QHDMEeSvY-8P7kxBvA" name="Gerer le materiel" classifierBehavior="_etTO8HGKEeSvZfb17d9O-Q">
        <ownedBehavior xmi:type="uml:Interaction" xmi:id="_etTO8HGKEeSvZfb17d9O-Q" name="Gerer le materielDetail">
          <lifeline xmi:type="uml:Lifeline" xmi:id="_h1IikHGKEeSvZfb17d9O-Q" name="Adlinistrateur MDL" coveredBy="_1_mQwHGKEeSvZfb17d9O-Q _c8iKAHGMEeSvZfb17d9O-Q _GzeBIHGMEeSvZfb17d9O-Q _x6Ae8HGLEeSvZfb17d9O-Q _PpfcEHGLEeSvZfb17d9O-Q _AWsncHGLEeSvZfb17d9O-Q _xGo9wnGKEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_lroTAHGKEeSvZfb17d9O-Q" name="Gestion utilisateur" coveredBy="_8e7EoXGKEeSvZfb17d9O-Q _c8hi8HGMEeSvZfb17d9O-Q _XDnO0HGMEeSvZfb17d9O-Q _T18Y8HGMEeSvZfb17d9O-Q _x5_34HGLEeSvZfb17d9O-Q _v_kykHGLEeSvZfb17d9O-Q _q-uu4HGLEeSvZfb17d9O-Q _-CoTEHGKEeSvZfb17d9O-Q _zhhr0HGKEeSvZfb17d9O-Q _nI3QkHGLEeSvZfb17d9O-Q _Jz9WoHGMEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_o2244HGKEeSvZfb17d9O-Q" name="Serveur" coveredBy="_1_mQwXGKEeSvZfb17d9O-Q _XDn14HGMEeSvZfb17d9O-Q _T17x4HGMEeSvZfb17d9O-Q _GzeoMHGMEeSvZfb17d9O-Q _v_lZoHGLEeSvZfb17d9O-Q _q-uH0HGLEeSvZfb17d9O-Q _kgybEXGLEeSvZfb17d9O-Q _cl3y8HGLEeSvZfb17d9O-Q _PpgDIHGLEeSvZfb17d9O-Q _AWsAYHGLEeSvZfb17d9O-Q _-Co6IHGKEeSvZfb17d9O-Q _8e7EoHGKEeSvZfb17d9O-Q _zC2y0HGKEeSvZfb17d9O-Q _MwkuMHGLEeSvZfb17d9O-Q _GG52EHGMEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_qUNAoHGKEeSvZfb17d9O-Q" name="Gestion manettes" coveredBy="_cl3y8XGLEeSvZfb17d9O-Q _kgybEHGLEeSvZfb17d9O-Q _hK4PMHGLEeSvZfb17d9O-Q _hK3oIHGLEeSvZfb17d9O-Q _aC0nYHGLEeSvZfb17d9O-Q _hK2aAHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_c8hi8HGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification29" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_c8iKAXGMEeSvZfb17d9O-Q" message="_c8mbcHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_c8iKAHGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification30" covered="_h1IikHGKEeSvZfb17d9O-Q" event="_c8iKAXGMEeSvZfb17d9O-Q" message="_c8mbcHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_XDnO0HGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification27" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_XDoc8HGMEeSvZfb17d9O-Q" message="_XDqSIHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_XDn14HGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification28" covered="_o2244HGKEeSvZfb17d9O-Q" event="_XDoc8HGMEeSvZfb17d9O-Q" message="_XDqSIHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_T17x4HGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification25" covered="_o2244HGKEeSvZfb17d9O-Q" event="_T18Y8XGMEeSvZfb17d9O-Q" message="_T1-OIHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_T18Y8HGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification26" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_T18Y8XGMEeSvZfb17d9O-Q" message="_T1-OIHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_GzeBIHGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification23" covered="_h1IikHGKEeSvZfb17d9O-Q" event="_GzeoMXGMEeSvZfb17d9O-Q" message="_GzgdYHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_GzeoMHGMEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification24" covered="_o2244HGKEeSvZfb17d9O-Q" event="_GzeoMXGMEeSvZfb17d9O-Q" message="_GzgdYHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_x5_34HGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification21" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_x6Ae8XGLEeSvZfb17d9O-Q" message="_x6CUIHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_x6Ae8HGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification22" covered="_h1IikHGKEeSvZfb17d9O-Q" event="_x6Ae8XGLEeSvZfb17d9O-Q" message="_x6CUIHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_v_kykHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification19" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_v_lZoXGLEeSvZfb17d9O-Q" message="_v_mnwHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_v_lZoHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification20" covered="_o2244HGKEeSvZfb17d9O-Q" event="_v_lZoXGLEeSvZfb17d9O-Q" message="_v_mnwHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_q-uH0HGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification17" covered="_o2244HGKEeSvZfb17d9O-Q" event="_q-uu4XGLEeSvZfb17d9O-Q" message="_q-wkEHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_q-uu4HGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification18" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_q-uu4XGLEeSvZfb17d9O-Q" message="_q-wkEHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_kgybEHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification15" covered="_qUNAoHGKEeSvZfb17d9O-Q" event="_kgybEnGLEeSvZfb17d9O-Q" message="_kg0QQHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_kgybEXGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification16" covered="_o2244HGKEeSvZfb17d9O-Q" event="_kgybEnGLEeSvZfb17d9O-Q" message="_kg0QQHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_hK3oIHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification13" covered="_qUNAoHGKEeSvZfb17d9O-Q" event="_hK4PMXGLEeSvZfb17d9O-Q" message="_hK6EYHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_hK4PMHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification14" covered="_qUNAoHGKEeSvZfb17d9O-Q" event="_hK4PMXGLEeSvZfb17d9O-Q" message="_hK6EYHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_cl3y8HGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification11" covered="_o2244HGKEeSvZfb17d9O-Q" event="_cl3y8nGLEeSvZfb17d9O-Q" message="_cl5BEHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_cl3y8XGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification12" covered="_qUNAoHGKEeSvZfb17d9O-Q" event="_cl3y8nGLEeSvZfb17d9O-Q" message="_cl5BEHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_PpfcEHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification9" covered="_h1IikHGKEeSvZfb17d9O-Q" event="_PpgDIXGLEeSvZfb17d9O-Q" message="_PphRQHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_PpgDIHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification10" covered="_o2244HGKEeSvZfb17d9O-Q" event="_PpgDIXGLEeSvZfb17d9O-Q" message="_PphRQHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_AWsAYHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification7" covered="_o2244HGKEeSvZfb17d9O-Q" event="_AWsncXGLEeSvZfb17d9O-Q" message="_AWt1kHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_AWsncHGLEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification8" covered="_h1IikHGKEeSvZfb17d9O-Q" event="_AWsncXGLEeSvZfb17d9O-Q" message="_AWt1kHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_-CoTEHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification5" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_-Co6IXGKEeSvZfb17d9O-Q" message="_-CqIQHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_-Co6IHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification6" covered="_o2244HGKEeSvZfb17d9O-Q" event="_-Co6IXGKEeSvZfb17d9O-Q" message="_-CqIQHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_8e7EoHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification3" covered="_o2244HGKEeSvZfb17d9O-Q" event="_8e7EonGKEeSvZfb17d9O-Q" message="_8e8SwHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_8e7EoXGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification4" covered="_lroTAHGKEeSvZfb17d9O-Q" event="_8e7EonGKEeSvZfb17d9O-Q" message="_8e8SwHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_1_mQwHGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification1" covered="_h1IikHGKEeSvZfb17d9O-Q" event="_1_mQwnGKEeSvZfb17d9O-Q" message="_1_ne4HGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_1_mQwXGKEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification2" covered="_o2244HGKEeSvZfb17d9O-Q" event="_1_mQwnGKEeSvZfb17d9O-Q" message="_1_ne4HGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_xGo9wnGKEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification1" covered="_h1IikHGKEeSvZfb17d9O-Q" start="_1_mQwHGKEeSvZfb17d9O-Q" finish="_c8iKAHGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_zhhr0HGKEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification3" covered="_lroTAHGKEeSvZfb17d9O-Q" start="_8e7EoXGKEeSvZfb17d9O-Q" finish="_-CoTEHGKEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_zC2y0HGKEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification2" covered="_o2244HGKEeSvZfb17d9O-Q" start="_1_mQwXGKEeSvZfb17d9O-Q" finish="_AWsAYHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_MwkuMHGLEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification4" covered="_o2244HGKEeSvZfb17d9O-Q" start="_cl3y8HGLEeSvZfb17d9O-Q" finish="_v_lZoHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_aC0nYHGLEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification5" covered="_qUNAoHGKEeSvZfb17d9O-Q" start="_cl3y8XGLEeSvZfb17d9O-Q" finish="_kgybEHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_hK2aAHGLEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification6" covered="_qUNAoHGKEeSvZfb17d9O-Q" start="_hK4PMHGLEeSvZfb17d9O-Q" finish="_hK4PMHGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_nI3QkHGLEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification7" covered="_lroTAHGKEeSvZfb17d9O-Q" start="_q-uu4HGLEeSvZfb17d9O-Q" finish="_x5_34HGLEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_GG52EHGMEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification8" covered="_o2244HGKEeSvZfb17d9O-Q" start="_GzeoMHGMEeSvZfb17d9O-Q" finish="_XDn14HGMEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_Jz9WoHGMEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification9" covered="_lroTAHGKEeSvZfb17d9O-Q" start="_T18Y8HGMEeSvZfb17d9O-Q" finish="_XDnO0HGMEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_1_ne4HGKEeSvZfb17d9O-Q" name="demande accès interface administrateur" receiveEvent="_1_mQwXGKEeSvZfb17d9O-Q" sendEvent="_1_mQwHGKEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_8e8SwHGKEeSvZfb17d9O-Q" name="Authentification" receiveEvent="_8e7EoXGKEeSvZfb17d9O-Q" sendEvent="_8e7EoHGKEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_-CqIQHGKEeSvZfb17d9O-Q" name="Vérification" messageSort="reply" receiveEvent="_-Co6IHGKEeSvZfb17d9O-Q" sendEvent="_-CoTEHGKEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_AWt1kHGLEeSvZfb17d9O-Q" name="accès interface" messageSort="reply" receiveEvent="_AWsncHGLEeSvZfb17d9O-Q" sendEvent="_AWsAYHGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_PphRQHGLEeSvZfb17d9O-Q" name="Commande directe des accès (blocage/déblocage)" receiveEvent="_PpgDIHGLEeSvZfb17d9O-Q" sendEvent="_PpfcEHGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_cl5BEHGLEeSvZfb17d9O-Q" name="Transfert demande" receiveEvent="_cl3y8XGLEeSvZfb17d9O-Q" sendEvent="_cl3y8HGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_hK6EYHGLEeSvZfb17d9O-Q" name="execution" receiveEvent="_hK4PMHGLEeSvZfb17d9O-Q" sendEvent="_hK3oIHGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_kg0QQHGLEeSvZfb17d9O-Q" name="confiermation" messageSort="reply" receiveEvent="_kgybEXGLEeSvZfb17d9O-Q" sendEvent="_kgybEHGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_q-wkEHGLEeSvZfb17d9O-Q" name="Enregistrement donnés utilisateur" receiveEvent="_q-uu4HGLEeSvZfb17d9O-Q" sendEvent="_q-uH0HGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_v_mnwHGLEeSvZfb17d9O-Q" name="Confiermation serveur" messageSort="reply" receiveEvent="_v_lZoHGLEeSvZfb17d9O-Q" sendEvent="_v_kykHGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_x6CUIHGLEeSvZfb17d9O-Q" name="confiermation client" messageSort="reply" receiveEvent="_x6Ae8HGLEeSvZfb17d9O-Q" sendEvent="_x5_34HGLEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_GzgdYHGMEeSvZfb17d9O-Q" name="Changement de la configuration" receiveEvent="_GzeoMHGMEeSvZfb17d9O-Q" sendEvent="_GzeBIHGMEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_T1-OIHGMEeSvZfb17d9O-Q" name="écriture donnés" receiveEvent="_T18Y8HGMEeSvZfb17d9O-Q" sendEvent="_T17x4HGMEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_XDqSIHGMEeSvZfb17d9O-Q" name="Confiermation serveur " messageSort="reply" receiveEvent="_XDn14HGMEeSvZfb17d9O-Q" sendEvent="_XDnO0HGMEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_c8mbcHGMEeSvZfb17d9O-Q" name="Confiermation client" messageSort="reply" receiveEvent="_c8iKAHGMEeSvZfb17d9O-Q" sendEvent="_c8hi8HGMEeSvZfb17d9O-Q"/>
        </ownedBehavior>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_xBrWkHDMEeSvY-8P7kxBvA" name="" memberEnd="_xBrWkXDMEeSvY-8P7kxBvA _xBrWlHDMEeSvY-8P7kxBvA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_xBrWkXDMEeSvY-8P7kxBvA" name="joueur" type="_V5zKUHDMEeSvY-8P7kxBvA" association="_xBrWkHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xBrWknDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xBrWk3DMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_xBrWlHDMEeSvY-8P7kxBvA" name="jouer" type="_ogweYHDMEeSvY-8P7kxBvA" association="_xBrWkHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xBrWlXDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xBrWlnDMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_zMr1kHDMEeSvY-8P7kxBvA" name="" memberEnd="_zMr1kXDMEeSvY-8P7kxBvA _zMr1lHDMEeSvY-8P7kxBvA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_zMr1kXDMEeSvY-8P7kxBvA" name="jouer" type="_ogweYHDMEeSvY-8P7kxBvA" association="_zMr1kHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_zMr1knDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_zMr1k3DMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_zMr1lHDMEeSvY-8P7kxBvA" name="systeme_Multimedia" type="_gr1wkHDMEeSvY-8P7kxBvA" association="_zMr1kHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_zMr1lXDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_zMr1lnDMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_-FpjMHDMEeSvY-8P7kxBvA" name="" memberEnd="_-FpjMXDMEeSvY-8P7kxBvA _-FpjNHDMEeSvY-8P7kxBvA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_-FpjMXDMEeSvY-8P7kxBvA" name="admin_MDL" type="_eNrFAHDMEeSvY-8P7kxBvA" association="_-FpjMHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_-FpjMnDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_-FpjM3DMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_-FpjNHDMEeSvY-8P7kxBvA" name="inscription" type="_sDGjwHDMEeSvY-8P7kxBvA" association="_-FpjMHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_-FpjNXDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_-FpjNnDMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_-5roMHDMEeSvY-8P7kxBvA" name="" memberEnd="_-5roMXDMEeSvY-8P7kxBvA _-5roNHDMEeSvY-8P7kxBvA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_-5roMXDMEeSvY-8P7kxBvA" name="admin_MDL" type="_eNrFAHDMEeSvY-8P7kxBvA" association="_-5roMHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_-5roMnDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_-5roM3DMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_-5roNHDMEeSvY-8P7kxBvA" name="gerer le materiel" type="_uCb-QHDMEeSvY-8P7kxBvA" association="_-5roMHDMEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_-5roNXDMEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_-5roNnDMEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_AGic4HDNEeSvY-8P7kxBvA" name="" memberEnd="_AGjD8HDNEeSvY-8P7kxBvA _AGjD83DNEeSvY-8P7kxBvA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_AGjD8HDNEeSvY-8P7kxBvA" name="gerer le materiel" type="_uCb-QHDMEeSvY-8P7kxBvA" association="_AGic4HDNEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_AGjD8XDNEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_AGjD8nDNEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_AGjD83DNEeSvY-8P7kxBvA" name="systeme_Gestion" type="_kgcDkHDMEeSvY-8P7kxBvA" association="_AGic4HDNEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_AGjD9HDNEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_AGjD9XDNEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_B5_-kHDNEeSvY-8P7kxBvA" name="" memberEnd="_B5_-kXDNEeSvY-8P7kxBvA _B5_-lHDNEeSvY-8P7kxBvA">
        <ownedEnd xmi:type="uml:Property" xmi:id="_B5_-kXDNEeSvY-8P7kxBvA" name="gerer le materiel" type="_uCb-QHDMEeSvY-8P7kxBvA" association="_B5_-kHDNEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_B5_-knDNEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_B5_-k3DNEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_B5_-lHDNEeSvY-8P7kxBvA" name="systeme_Multimedia" type="_gr1wkHDMEeSvY-8P7kxBvA" association="_B5_-kHDNEeSvY-8P7kxBvA">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_B5_-lXDNEeSvY-8P7kxBvA" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_B5_-lnDNEeSvY-8P7kxBvA" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_YmscIHDREeSvY-8P7kxBvA" name="CallEvent1"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_cc6fwXDREeSvY-8P7kxBvA" name="CallEvent2"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_elc5kXDREeSvY-8P7kxBvA" name="CallEvent3"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_4Z02kXDREeSvY-8P7kxBvA" name="CallEvent4"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_dforkXDSEeSvY-8P7kxBvA" name="CallEvent5"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_kkvtEHDSEeSvY-8P7kxBvA" name="CallEvent6"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_p8MS4XDSEeSvY-8P7kxBvA" name="CallEvent7"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_0uOSEHDSEeSvY-8P7kxBvA" name="CallEvent8"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_9hL8gXDSEeSvY-8P7kxBvA" name="CallEvent9"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_Zaxw8HGAEeSvZfb17d9O-Q" name="Acess commandes utilisateur" classifierBehavior="_-UnmgHGAEeSvZfb17d9O-Q">
        <ownedBehavior xmi:type="uml:Interaction" xmi:id="_-UnmgHGAEeSvZfb17d9O-Q" name="Consulter donnés personellesDetail">
          <ownedComment xmi:type="uml:Comment" xmi:id="_Dc2ElHGBEeSvZfb17d9O-Q">
            <body>Login/mdp/Crédit</body>
          </ownedComment>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_Dc2EkHGBEeSvZfb17d9O-Q" name="Gestion utilisateur" coveredBy="_bcWKoHGBEeSvZfb17d9O-Q _dIC3cHGBEeSvZfb17d9O-Q _NjGi4HGBEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_Dc2EkXGBEeSvZfb17d9O-Q" name="Utilisateur" coveredBy="_Sz_NsHGBEeSvZfb17d9O-Q _fn92gHGBEeSvZfb17d9O-Q _KdVr0HGBEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_Dc2Ek3GBEeSvZfb17d9O-Q" name="Serveur" coveredBy="_Sz_NsXGBEeSvZfb17d9O-Q _fn9PcHGBEeSvZfb17d9O-Q _dIDegHGBEeSvZfb17d9O-Q _bcVjkHGBEeSvZfb17d9O-Q _M2IvMHGBEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_IOYPAHGDEeSvZfb17d9O-Q" name="Utilisateur" coveredBy="_fMODwHGDEeSvZfb17d9O-Q _106yIHGHEeSvZfb17d9O-Q _RBkmIHGHEeSvZfb17d9O-Q _6jgTEHGFEeSvZfb17d9O-Q _NZeI8HGFEeSvZfb17d9O-Q _z6nI8HGEEeSvZfb17d9O-Q _z6mh4HGEEeSvZfb17d9O-Q _mlF5UHGEEeSvZfb17d9O-Q _VMsDEHGEEeSvZfb17d9O-Q _Hhv9EHGEEeSvZfb17d9O-Q _Ri8KoHGDEeSvZfb17d9O-Q _z6kFoHGEEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_KgrBwHGDEeSvZfb17d9O-Q" name="Gestion utilisateur" coveredBy="_2rjcAXGDEeSvZfb17d9O-Q _zIjSgHGHEeSvZfb17d9O-Q _syJxIHGHEeSvZfb17d9O-Q _4aV5EHGDEeSvZfb17d9O-Q _1uHjYHGDEeSvZfb17d9O-Q _j4K4sHGHEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_NVt8QHGDEeSvZfb17d9O-Q" name="Serveur" coveredBy="_fMODwXGDEeSvZfb17d9O-Q _IiuVEHGIEeSvZfb17d9O-Q _10488HGHEeSvZfb17d9O-Q _zIkgoHGHEeSvZfb17d9O-Q _syIjAHGHEeSvZfb17d9O-Q _hSUQwHGHEeSvZfb17d9O-Q _YgrcAHGHEeSvZfb17d9O-Q _RBl0QHGHEeSvZfb17d9O-Q _m-NHcHGFEeSvZfb17d9O-Q _NZewAHGFEeSvZfb17d9O-Q _mlFSQHGEEeSvZfb17d9O-Q _VMsqIHGEEeSvZfb17d9O-Q _HhvWAHGEEeSvZfb17d9O-Q _4aWgIHGDEeSvZfb17d9O-Q _2rjcAHGDEeSvZfb17d9O-Q _bip8EHGDEeSvZfb17d9O-Q _Pu4WkHGEEeSvZfb17d9O-Q _OG-dQHGHEeSvZfb17d9O-Q"/>
          <lifeline xmi:type="uml:Lifeline" xmi:id="_QncWQHGEEeSvZfb17d9O-Q" name="Gestion manettes" coveredBy="_m-OVkHGFEeSvZfb17d9O-Q _Iisf4HGIEeSvZfb17d9O-Q _hSTCoHGHEeSvZfb17d9O-Q _b11Z8HGHEeSvZfb17d9O-Q _b10L0HGHEeSvZfb17d9O-Q _YgsqIHGHEeSvZfb17d9O-Q _6jfsAHGFEeSvZfb17d9O-Q _pQpEIHGFEeSvZfb17d9O-Q _pQn2AHGFEeSvZfb17d9O-Q _RfJk4HGFEeSvZfb17d9O-Q _pQlZwHGFEeSvZfb17d9O-Q _WJHHsHGHEeSvZfb17d9O-Q _b1xvkHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Iisf4HGIEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification29" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_IiuVEXGIEeSvZfb17d9O-Q" message="_Iiu8IHGIEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_IiuVEHGIEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification30" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_IiuVEXGIEeSvZfb17d9O-Q" message="_Iiu8IHGIEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_10488HGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification45" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_106yIXGHEeSvZfb17d9O-Q" message="_107ZMHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_106yIHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification46" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_106yIXGHEeSvZfb17d9O-Q" message="_107ZMHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_zIjSgHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification43" covered="_KgrBwHGDEeSvZfb17d9O-Q" event="_zIkgoXGHEeSvZfb17d9O-Q" message="_zIlHsHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_zIkgoHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification44" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_zIkgoXGHEeSvZfb17d9O-Q" message="_zIlHsHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_syIjAHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification41" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_syJxIXGHEeSvZfb17d9O-Q" message="_syKYMHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_syJxIHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification42" covered="_KgrBwHGDEeSvZfb17d9O-Q" event="_syJxIXGHEeSvZfb17d9O-Q" message="_syKYMHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_hSTCoHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification39" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_hSU30HGHEeSvZfb17d9O-Q" message="_hSVe4HGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_hSUQwHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification40" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_hSU30HGHEeSvZfb17d9O-Q" message="_hSVe4HGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_b10L0HGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification37" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_b12BAHGHEeSvZfb17d9O-Q" message="_b12oEHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_b11Z8HGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification38" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_b12BAHGHEeSvZfb17d9O-Q" message="_b12oEHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_YgrcAHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification35" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_YgsqIXGHEeSvZfb17d9O-Q" message="_YgtRMHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_YgsqIHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification36" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_YgsqIXGHEeSvZfb17d9O-Q" message="_YgtRMHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_RBkmIHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification33" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_RBl0QXGHEeSvZfb17d9O-Q" message="_RBmbUHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_RBl0QHGHEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification34" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_RBl0QXGHEeSvZfb17d9O-Q" message="_RBmbUHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_6jfsAHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification31" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_6jg6IHGFEeSvZfb17d9O-Q" message="_6jg6IXGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_6jgTEHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification32" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_6jg6IHGFEeSvZfb17d9O-Q" message="_6jg6IXGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_pQn2AHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification27" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_pQprMHGFEeSvZfb17d9O-Q" message="_pQqSQHGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_pQpEIHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification28" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_pQprMHGFEeSvZfb17d9O-Q" message="_pQqSQHGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_m-NHcHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification25" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_m-OVkXGFEeSvZfb17d9O-Q" message="_m-O8oHGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_m-OVkHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification26" covered="_QncWQHGEEeSvZfb17d9O-Q" event="_m-OVkXGFEeSvZfb17d9O-Q" message="_m-O8oHGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_NZeI8HGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification23" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_NZewAXGFEeSvZfb17d9O-Q" message="_NZewAnGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_NZewAHGFEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification24" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_NZewAXGFEeSvZfb17d9O-Q" message="_NZewAnGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_z6mh4HGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification21" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_z6nwAHGEEeSvZfb17d9O-Q" message="_z6nwAXGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_z6nI8HGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification22" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_z6nwAHGEEeSvZfb17d9O-Q" message="_z6nwAXGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_mlFSQHGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification19" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_mlF5UXGEEeSvZfb17d9O-Q" message="_mlGgYHGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_mlF5UHGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification20" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_mlF5UXGEEeSvZfb17d9O-Q" message="_mlGgYHGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_VMsDEHGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification17" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_VMsqIXGEEeSvZfb17d9O-Q" message="_VMtRMHGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_VMsqIHGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification18" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_VMsqIXGEEeSvZfb17d9O-Q" message="_VMtRMHGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_HhvWAHGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification15" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_HhwkIHGEEeSvZfb17d9O-Q" message="_HhwkIXGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Hhv9EHGEEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification16" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_HhwkIHGEEeSvZfb17d9O-Q" message="_HhwkIXGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_4aV5EHGDEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification13" covered="_KgrBwHGDEeSvZfb17d9O-Q" event="_4aWgIXGDEeSvZfb17d9O-Q" message="_4aXHMHGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_4aWgIHGDEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification14" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_4aWgIXGDEeSvZfb17d9O-Q" message="_4aXHMHGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_2rjcAHGDEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification11" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_2rjcAnGDEeSvZfb17d9O-Q" message="_2rkDEHGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_2rjcAXGDEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification12" covered="_KgrBwHGDEeSvZfb17d9O-Q" event="_2rjcAnGDEeSvZfb17d9O-Q" message="_2rkDEHGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_fMODwHGDEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification9" covered="_IOYPAHGDEeSvZfb17d9O-Q" event="_fMOq0HGDEeSvZfb17d9O-Q" message="_fMOq0XGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_fMODwXGDEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification10" covered="_NVt8QHGDEeSvZfb17d9O-Q" event="_fMOq0HGDEeSvZfb17d9O-Q" message="_fMOq0XGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_fn9PcHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification7" covered="_Dc2Ek3GBEeSvZfb17d9O-Q" event="_fn92gXGBEeSvZfb17d9O-Q" message="_fn92gnGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_fn92gHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification8" covered="_Dc2EkXGBEeSvZfb17d9O-Q" event="_fn92gXGBEeSvZfb17d9O-Q" message="_fn92gnGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_dIC3cHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification5" covered="_Dc2EkHGBEeSvZfb17d9O-Q" event="_dIDegXGBEeSvZfb17d9O-Q" message="_dIDegnGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_dIDegHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification6" covered="_Dc2Ek3GBEeSvZfb17d9O-Q" event="_dIDegXGBEeSvZfb17d9O-Q" message="_dIDegnGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_bcVjkHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification3" covered="_Dc2Ek3GBEeSvZfb17d9O-Q" event="_bcWKoXGBEeSvZfb17d9O-Q" message="_bcWKonGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_bcWKoHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification4" covered="_Dc2EkHGBEeSvZfb17d9O-Q" event="_bcWKoXGBEeSvZfb17d9O-Q" message="_bcWKonGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Sz_NsHGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification1" covered="_Dc2EkXGBEeSvZfb17d9O-Q" event="_Sz_NsnGBEeSvZfb17d9O-Q" message="_Sz_0wHGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:MessageOccurrenceSpecification" xmi:id="_Sz_NsXGBEeSvZfb17d9O-Q" name="MessageOccurrenceSpecification2" covered="_Dc2Ek3GBEeSvZfb17d9O-Q" event="_Sz_NsnGBEeSvZfb17d9O-Q" message="_Sz_0wHGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_Ri8KoHGDEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification4" covered="_IOYPAHGDEeSvZfb17d9O-Q" start="_fMODwHGDEeSvZfb17d9O-Q" finish="_106yIHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_bip8EHGDEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification5" covered="_NVt8QHGDEeSvZfb17d9O-Q" start="_fMODwXGDEeSvZfb17d9O-Q" finish="_HhvWAHGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_1uHjYHGDEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification6" covered="_KgrBwHGDEeSvZfb17d9O-Q" start="_2rjcAXGDEeSvZfb17d9O-Q" finish="_4aV5EHGDEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_Pu4WkHGEEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification7" covered="_NVt8QHGDEeSvZfb17d9O-Q" start="_VMsqIHGEEeSvZfb17d9O-Q" finish="_IiuVEHGIEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_z6kFoHGEEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification8" covered="_IOYPAHGDEeSvZfb17d9O-Q" start="_z6nI8HGEEeSvZfb17d9O-Q" finish="_z6nI8HGEEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_RfJk4HGFEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification9" covered="_QncWQHGEEeSvZfb17d9O-Q" start="_m-OVkHGFEeSvZfb17d9O-Q" finish="_6jfsAHGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_pQlZwHGFEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification10" covered="_QncWQHGEEeSvZfb17d9O-Q" start="_pQpEIHGFEeSvZfb17d9O-Q" finish="_pQpEIHGFEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_OG-dQHGHEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification11" covered="_NVt8QHGDEeSvZfb17d9O-Q" start="_RBl0QHGHEeSvZfb17d9O-Q" finish="_10488HGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_WJHHsHGHEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification12" covered="_QncWQHGEEeSvZfb17d9O-Q" start="_YgsqIHGHEeSvZfb17d9O-Q" finish="_hSTCoHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_b1xvkHGHEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification13" covered="_QncWQHGEEeSvZfb17d9O-Q" start="_b11Z8HGHEeSvZfb17d9O-Q" finish="_b11Z8HGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_j4K4sHGHEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification14" covered="_KgrBwHGDEeSvZfb17d9O-Q" start="_syJxIHGHEeSvZfb17d9O-Q" finish="_zIjSgHGHEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_KdVr0HGBEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification1" covered="_Dc2EkXGBEeSvZfb17d9O-Q" start="_Sz_NsHGBEeSvZfb17d9O-Q" finish="_fn92gHGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_M2IvMHGBEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification2" covered="_Dc2Ek3GBEeSvZfb17d9O-Q" start="_Sz_NsXGBEeSvZfb17d9O-Q" finish="_fn9PcHGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:BehaviorExecutionSpecification" xmi:id="_NjGi4HGBEeSvZfb17d9O-Q" name="BehaviorExecutionSpecification3" covered="_Dc2EkHGBEeSvZfb17d9O-Q" start="_bcWKoHGBEeSvZfb17d9O-Q" finish="_dIC3cHGBEeSvZfb17d9O-Q"/>
          <fragment xmi:type="uml:CombinedFragment" xmi:id="_mzELQHGBEeSvZfb17d9O-Q" name="CombinedFragment2" interactionOperator="par">
            <operand xmi:type="uml:InteractionOperand" xmi:id="_mzELQXGBEeSvZfb17d9O-Q"/>
          </fragment>
          <message xmi:type="uml:Message" xmi:id="_Sz_0wHGBEeSvZfb17d9O-Q" name="Demande consultation" receiveEvent="_Sz_NsXGBEeSvZfb17d9O-Q" sendEvent="_Sz_NsHGBEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_bcWKonGBEeSvZfb17d9O-Q" name="Authentification" receiveEvent="_bcWKoHGBEeSvZfb17d9O-Q" sendEvent="_bcVjkHGBEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_dIDegnGBEeSvZfb17d9O-Q" name="Autorisation" messageSort="reply" receiveEvent="_dIDegHGBEeSvZfb17d9O-Q" sendEvent="_dIC3cHGBEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_fn92gnGBEeSvZfb17d9O-Q" name="Affichage donnés utilisateur" messageSort="reply" receiveEvent="_fn92gHGBEeSvZfb17d9O-Q" sendEvent="_fn9PcHGBEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_fMOq0XGDEeSvZfb17d9O-Q" name="Demande d'acess à l'interface" receiveEvent="_fMODwXGDEeSvZfb17d9O-Q" sendEvent="_fMODwHGDEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_2rkDEHGDEeSvZfb17d9O-Q" name="Authentification" receiveEvent="_2rjcAXGDEeSvZfb17d9O-Q" sendEvent="_2rjcAHGDEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_4aXHMHGDEeSvZfb17d9O-Q" name="Autorisation" messageSort="reply" receiveEvent="_4aWgIHGDEeSvZfb17d9O-Q" sendEvent="_4aV5EHGDEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_HhwkIXGEEeSvZfb17d9O-Q" name="Page de commande et d'information utilisateur" messageSort="reply" receiveEvent="_Hhv9EHGEEeSvZfb17d9O-Q" sendEvent="_HhvWAHGEEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_VMtRMHGEEeSvZfb17d9O-Q" name="Changer d'équipement" receiveEvent="_VMsqIHGEEeSvZfb17d9O-Q" sendEvent="_VMsDEHGEEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_mlGgYHGEEeSvZfb17d9O-Q" name="Demande le n° de l'équipement souhaité " messageSort="reply" receiveEvent="_mlF5UHGEEeSvZfb17d9O-Q" sendEvent="_mlFSQHGEEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_z6nwAXGEEeSvZfb17d9O-Q" name="choix d'équipement" receiveEvent="_z6nI8HGEEeSvZfb17d9O-Q" sendEvent="_z6mh4HGEEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_NZewAnGFEeSvZfb17d9O-Q" name="réponse choix" receiveEvent="_NZewAHGFEeSvZfb17d9O-Q" sendEvent="_NZeI8HGFEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_m-O8oHGFEeSvZfb17d9O-Q" name="Ordre de basculement" messageSort="asynchCall" receiveEvent="_m-OVkHGFEeSvZfb17d9O-Q" sendEvent="_m-NHcHGFEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_pQqSQHGFEeSvZfb17d9O-Q" name="Basculement" messageSort="asynchCall" receiveEvent="_pQpEIHGFEeSvZfb17d9O-Q" sendEvent="_pQn2AHGFEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_6jg6IXGFEeSvZfb17d9O-Q" name="Confiermation utilisateur" messageSort="reply" receiveEvent="_6jgTEHGFEeSvZfb17d9O-Q" sendEvent="_6jfsAHGFEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_RBmbUHGHEeSvZfb17d9O-Q" name="Arreter de jouer" receiveEvent="_RBl0QHGHEeSvZfb17d9O-Q" sendEvent="_RBkmIHGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_YgtRMHGHEeSvZfb17d9O-Q" name="Ordre de Blocage" receiveEvent="_YgsqIHGHEeSvZfb17d9O-Q" sendEvent="_YgrcAHGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_b12oEHGHEeSvZfb17d9O-Q" name="Blocage" messageSort="asynchCall" receiveEvent="_b11Z8HGHEeSvZfb17d9O-Q" sendEvent="_b10L0HGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_hSVe4HGHEeSvZfb17d9O-Q" name="Confiermation de blocage" messageSort="reply" receiveEvent="_hSUQwHGHEeSvZfb17d9O-Q" sendEvent="_hSTCoHGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_syKYMHGHEeSvZfb17d9O-Q" name="écriture du crédit restant" messageSort="asynchCall" receiveEvent="_syJxIHGHEeSvZfb17d9O-Q" sendEvent="_syIjAHGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_zIlHsHGHEeSvZfb17d9O-Q" name="Confiermation d'écriture" messageSort="reply" receiveEvent="_zIkgoHGHEeSvZfb17d9O-Q" sendEvent="_zIjSgHGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_107ZMHGHEeSvZfb17d9O-Q" name="Confiermation d'arrêt de jeu." messageSort="reply" receiveEvent="_106yIHGHEeSvZfb17d9O-Q" sendEvent="_10488HGHEeSvZfb17d9O-Q"/>
          <message xmi:type="uml:Message" xmi:id="_Iiu8IHGIEeSvZfb17d9O-Q" name="Confiermation serveur" messageSort="reply" receiveEvent="_IiuVEHGIEeSvZfb17d9O-Q" sendEvent="_Iisf4HGIEeSvZfb17d9O-Q"/>
        </ownedBehavior>
        <include xmi:type="uml:Include" xmi:id="_yEKhgHGAEeSvZfb17d9O-Q" name="Include1" addition="_qtCIsHDMEeSvY-8P7kxBvA"/>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_uexIIHGAEeSvZfb17d9O-Q" name="" memberEnd="_uexIIXGAEeSvZfb17d9O-Q _uexIJHGAEeSvZfb17d9O-Q">
        <ownedEnd xmi:type="uml:Property" xmi:id="_uexIIXGAEeSvZfb17d9O-Q" name="joueur" type="_V5zKUHDMEeSvY-8P7kxBvA" association="_uexIIHGAEeSvZfb17d9O-Q">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_uexIInGAEeSvZfb17d9O-Q" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_uexII3GAEeSvZfb17d9O-Q" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_uexIJHGAEeSvZfb17d9O-Q" name="consulter donnés personelles" type="_Zaxw8HGAEeSvZfb17d9O-Q" association="_uexIIHGAEeSvZfb17d9O-Q">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_uexIJXGAEeSvZfb17d9O-Q" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_uexIJnGAEeSvZfb17d9O-Q" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_4L6i4HGAEeSvZfb17d9O-Q" name="" memberEnd="_4L6i4XGAEeSvZfb17d9O-Q _4L6i5HGAEeSvZfb17d9O-Q">
        <ownedEnd xmi:type="uml:Property" xmi:id="_4L6i4XGAEeSvZfb17d9O-Q" name="consulter donnés personelles" type="_Zaxw8HGAEeSvZfb17d9O-Q" association="_4L6i4HGAEeSvZfb17d9O-Q">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_4L6i4nGAEeSvZfb17d9O-Q" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_4L6i43GAEeSvZfb17d9O-Q" value="1"/>
        </ownedEnd>
        <ownedEnd xmi:type="uml:Property" xmi:id="_4L6i5HGAEeSvZfb17d9O-Q" name="systeme_Gestion" type="_kgcDkHDMEeSvY-8P7kxBvA" association="_4L6i4HGAEeSvZfb17d9O-Q">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_4L6i5XGAEeSvZfb17d9O-Q" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_4L6i5nGAEeSvZfb17d9O-Q" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_Sz_NsnGBEeSvZfb17d9O-Q" name="CallEvent10"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_bcWKoXGBEeSvZfb17d9O-Q" name="CallEvent11"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_dIDegXGBEeSvZfb17d9O-Q" name="CallEvent12"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_fn92gXGBEeSvZfb17d9O-Q" name="CallEvent13"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_fMOq0HGDEeSvZfb17d9O-Q" name="CallEvent14"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_2rjcAnGDEeSvZfb17d9O-Q" name="CallEvent15"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_4aWgIXGDEeSvZfb17d9O-Q" name="CallEvent16"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_HhwkIHGEEeSvZfb17d9O-Q" name="CallEvent17"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_VMsqIXGEEeSvZfb17d9O-Q" name="CallEvent18"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_mlF5UXGEEeSvZfb17d9O-Q" name="CallEvent19"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_z6nwAHGEEeSvZfb17d9O-Q" name="CallEvent20"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_NZewAXGFEeSvZfb17d9O-Q" name="CallEvent21"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_m-OVkXGFEeSvZfb17d9O-Q" name="CallEvent22"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_pQprMHGFEeSvZfb17d9O-Q" name="CallEvent23"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_6jg6IHGFEeSvZfb17d9O-Q" name="CallEvent25"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_RBl0QXGHEeSvZfb17d9O-Q" name="CallEvent26"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_YgsqIXGHEeSvZfb17d9O-Q" name="CallEvent27"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_b12BAHGHEeSvZfb17d9O-Q" name="CallEvent28"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_hSU30HGHEeSvZfb17d9O-Q" name="CallEvent29"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_syJxIXGHEeSvZfb17d9O-Q" name="CallEvent30"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_zIkgoXGHEeSvZfb17d9O-Q" name="CallEvent31"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_106yIXGHEeSvZfb17d9O-Q" name="CallEvent32"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_IiuVEXGIEeSvZfb17d9O-Q" name="CallEvent24"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_-5fUgHGIEeSvZfb17d9O-Q" name="CallEvent33"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_DmhEUXGJEeSvZfb17d9O-Q" name="CallEvent34"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_GsqV4XGJEeSvZfb17d9O-Q" name="CallEvent35"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_KbW1MHGJEeSvZfb17d9O-Q" name="CallEvent36"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_SU0r0XGJEeSvZfb17d9O-Q" name="CallEvent37"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_hWWxUXGJEeSvZfb17d9O-Q" name="CallEvent39"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_TigxgXGKEeSvZfb17d9O-Q" name="CallEvent38"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_V0R_0XGKEeSvZfb17d9O-Q" name="CallEvent40"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_1_mQwnGKEeSvZfb17d9O-Q" name="CallEvent41"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_8e7EonGKEeSvZfb17d9O-Q" name="CallEvent42"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_-Co6IXGKEeSvZfb17d9O-Q" name="CallEvent43"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_AWsncXGLEeSvZfb17d9O-Q" name="CallEvent44"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_PpgDIXGLEeSvZfb17d9O-Q" name="CallEvent45"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_cl3y8nGLEeSvZfb17d9O-Q" name="CallEvent46"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_hK4PMXGLEeSvZfb17d9O-Q" name="CallEvent47"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_kgybEnGLEeSvZfb17d9O-Q" name="CallEvent48"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_q-uu4XGLEeSvZfb17d9O-Q" name="CallEvent49"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_v_lZoXGLEeSvZfb17d9O-Q" name="CallEvent50"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_x6Ae8XGLEeSvZfb17d9O-Q" name="CallEvent51"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_GzeoMXGMEeSvZfb17d9O-Q" name="CallEvent52"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_T18Y8XGMEeSvZfb17d9O-Q" name="CallEvent53"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_XDoc8HGMEeSvZfb17d9O-Q" name="CallEvent54"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_bHZNUHGMEeSvZfb17d9O-Q" name="CallEvent55"/>
      <packagedElement xmi:type="uml:CallEvent" xmi:id="_c8iKAXGMEeSvZfb17d9O-Q" name="CallEvent56"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_by-L4CXLEd-dqNMA4nrGhQ" name="structure">
      <packagedElement xmi:type="sysML:Block" xmi:id="_pjJ26yXOEd-dqNMA4nrGhQ" name="GAM_V2"/>
      <packagedElement xmi:type="sysML:Block" xmi:id="_i9VgUHvIEeSQNZIKHwcm5Q" name="Block1"/>
      <packagedElement xmi:type="sysML:Block" xmi:id="_vPQoIHvMEeSQNZIKHwcm5Q" name="Utilisateur">
        <ownedAttribute xmi:type="uml:Property" xmi:id="_XLScUXvNEeSQNZIKHwcm5Q" name="Property1" aggregation="composite"/>
        <ownedAttribute xmi:type="uml:Property" xmi:id="_2kM_8HvNEeSQNZIKHwcm5Q" name="Nom d'utilisateur"/>
        <ownedAttribute xmi:type="uml:Property" xmi:id="_MlOAEHvOEeSQNZIKHwcm5Q" name="Mot de passe"/>
      </packagedElement>
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_cS3M4CXLEd-dqNMA4nrGhQ" name="Requirement">
      <ownedComment xmi:type="uml:Comment" xmi:id="_Nii6gHP4EeSQrOVfsqeZqg" annotatedElement="_qL_SEHP2EeS32dSOUmWVCQ">
        <body>One minute is enought to change of gaming system</body>
      </ownedComment>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_aoLIcHGREeS_Aa6y64wgDw" name="Gestion" isAbstract="true" id="1.0.0" text="Le système doit permettre le gestion des systèmes de jeux"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_zcqVwHGREeS_Aa6y64wgDw" name="Requirement1" clientDependency="_D9C-4HGSEeS_Aa6y64wgDw" isAbstract="true" id="2.1.0" text="Le système doit prévenir l'administrateur si une manette quitte la salle">
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_E6cbQHGSEeS_Aa6y64wgDw" name="Logs" clientDependency="_X4NFwHGSEeS_Aa6y64wgDw _fpPZIHGSEeS_Aa6y64wgDw" isAbstract="true" id="2.1.1" text="Le système doit enregistrer les tentatives de vols"/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_jmj_wHGREeS_Aa6y64wgDw" name="Sécurité" isAbstract="true" id="2.0.0" text="Le système doit assurer la sécurité des systèmes de jeux"/>
      </packagedElement>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_D9C-4HGSEeS_Aa6y64wgDw" name="DeriveReqt1" supplier="_jmj_wHGREeS_Aa6y64wgDw" client="_zcqVwHGREeS_Aa6y64wgDw"/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_X4NFwHGSEeS_Aa6y64wgDw" name="DeriveReqt2" supplier="_jmj_wHGREeS_Aa6y64wgDw" client="_E6cbQHGSEeS_Aa6y64wgDw"/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_fpPZIHGSEeS_Aa6y64wgDw" name="DeriveReqt3" supplier="_zcqVwHGREeS_Aa6y64wgDw" client="_E6cbQHGSEeS_Aa6y64wgDw"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_lbUsgHGSEeS_Aa6y64wgDw" name="Consoles" isAbstract="true" id="2.2.0" text="Le système doit empêcher l'accès direct aux systèmes de jeux"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_iagvQHP1EeS32dSOUmWVCQ" name="Design" clientDependency="_7Pfr0HP1EeS32dSOUmWVCQ" isAbstract="true" id="1.5.0" text="L'interface graphique doit être intuitive."/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_iaikcHP1EeS32dSOUmWVCQ" name="Authentification" clientDependency="_8mIHkHP1EeS32dSOUmWVCQ" isAbstract="true" id="1.4.0" text="Empêcher les utilisateurs d'utiliser l'interface d'administration.&#xD;&#xA;Nom d'utilisateur &#xD;&#xA;Mot de passe"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_iaikcXP1EeS32dSOUmWVCQ" name="Acess Managment" isAbstract="true" id="1.0.0" text="Le sytème doit permettre la gestion des acèss aux sysèmes de jeu.">
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iaikcnP1EeS32dSOUmWVCQ" name="Timer" isAbstract="true" id="1.1.1" text="A player has a daily time credit to use a controller.">
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iaikc3P1EeS32dSOUmWVCQ" name="Over time" isAbstract="true" id="1.1.13" text="If a player exceed his time credit, his gaming controller will lock"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iaikdHP1EeS32dSOUmWVCQ" name="Show time" isAbstract="true" id="1.1.11" text="The system must show left time to each player"/>
        </nestedClassifier>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_CSX4sHP2EeS32dSOUmWVCQ" name="Timer" isAbstract="true" id="1.1.1" text="Chaque joueur possède un crédit journalier de jeu.">
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_CSX4sXP2EeS32dSOUmWVCQ" name="Over time" isAbstract="true" id="1.1.13" text="If a player exceed his time credit, his gaming controller will lock"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_CSX4snP2EeS32dSOUmWVCQ" name="Show time" isAbstract="true" id="1.1.11" text="The system must show left time to each player"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_MWZiYHP2EeS32dSOUmWVCQ" name="Over time" isAbstract="true" id="1.1.13" text="Si un joueur dépasse son temps de jeu, sa commande sera bloquée"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_O1640HP2EeS32dSOUmWVCQ" name="Show time" isAbstract="true" id="1.1.11" text="Le système doit informer chaque joueur de son crédit restant."/>
        </nestedClassifier>
      </packagedElement>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_iajLgHP1EeS32dSOUmWVCQ" name="Controllable systems" clientDependency="_i7h8MHP2EeS32dSOUmWVCQ" isAbstract="true" id="1.1.0" text="Le système doit pouvoir bloquer/débloquer un péripherique USB --> une manette"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_iajLgXP1EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_iajLgnP1EeS32dSOUmWVCQ" name="Acess management" clientDependency="_9K0wEHP1EeS32dSOUmWVCQ" isAbstract="true" id="1.1.0" text="L'interface d'administration doit être acessible via un navigateur internet.">
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLg3P1EeS32dSOUmWVCQ" name="Acess managment" isAbstract="true" id="1" text="The system must be controlled remotely"/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLhHP1EeS32dSOUmWVCQ" name="User Managment" isAbstract="true" id="1.2.0" text="The interface must provide user managing fonctions">
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLhXP1EeS32dSOUmWVCQ" name="usage information" isAbstract="true" id="1.2.2" text="The interface must display the current usage of all systems&#xD;&#xA;-system id&#xD;&#xA;-controller id&#xD;&#xA;-number of players&#xD;&#xA;-time left&#xD;&#xA;-username&#xD;&#xA;"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLhnP1EeS32dSOUmWVCQ" name="user add" isAbstract="true" id="1.2.1" text="ability to add or remove a new user"/>
        </nestedClassifier>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLh3P1EeS32dSOUmWVCQ" name="Parameter Managment" isAbstract="true" id="1.3.0" text="The interface must provide system configuration settings.">
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLiHP1EeS32dSOUmWVCQ" name="Game duration" isAbstract="true" id="1.3.1" text="Give the administrator the abillity to set a daily time credit for the users."/>
        </nestedClassifier>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_iajLiXP1EeS32dSOUmWVCQ" name="System managment" isAbstract="true" id="1.6.0" text="The administrator must be able to control the system regardless of the users&#xD;&#xA;"/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_wcFzoHP1EeS32dSOUmWVCQ" name="System managment" isAbstract="true" id="1.6.0" text="L'administrateur doit pouvoir bloquer/débloquer un système manuellement.&#xD;&#xA;"/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_zkRskHP1EeS32dSOUmWVCQ" name="Parameter Managment" isAbstract="true" id="1.3.0" text="L'interface doit fournir un utilitaire de configuration système.">
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_zkRskXP1EeS32dSOUmWVCQ" name="Game duration" isAbstract="true" id="1.3.1" text="Give the administrator the abillity to set a daily time credit for the users."/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_3f838HP1EeS32dSOUmWVCQ" name="Game duration" isAbstract="true" id="1.3.1" text="Réglage de crédit utilisateur journalier."/>
        </nestedClassifier>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_TX09wHP2EeS32dSOUmWVCQ" name="User Managment" isAbstract="true" id="1.2.0" text="Fonctions de gestion utilisateur">
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_TX09wXP2EeS32dSOUmWVCQ" name="usage information" isAbstract="true" id="1.2.2" text="The interface must display the current usage of all systems&#xD;&#xA;-system id&#xD;&#xA;-controller id&#xD;&#xA;-number of players&#xD;&#xA;-time left&#xD;&#xA;-username&#xD;&#xA;"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_TX09wnP2EeS32dSOUmWVCQ" name="user add" isAbstract="true" id="1.2.1" text="ability to add or remove a new user"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_VVdvIHP2EeS32dSOUmWVCQ" name="user add" isAbstract="true" id="1.2.1" text="Ajout/supression d'utilisateur"/>
          <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_YcDFkHP2EeS32dSOUmWVCQ" name="usage information" isAbstract="true" id="1.2.2" text="L'interface doit afficher l'utilisation en temps reel de l'instalation.&#xD;&#xA;-id système&#xD;&#xA;-id manette&#xD;&#xA;-nombre de joueurs&#xD;&#xA;-crédit restant&#xD;&#xA;-nom d'utilisateur&#xD;&#xA;"/>
        </nestedClassifier>
      </packagedElement>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_7Pfr0HP1EeS32dSOUmWVCQ" name="Refine1" supplier="_iajLgnP1EeS32dSOUmWVCQ" client="_iagvQHP1EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_8mIHkHP1EeS32dSOUmWVCQ" name="DeriveReqt4" supplier="_iajLgnP1EeS32dSOUmWVCQ" client="_iaikcHP1EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_9K0wEHP1EeS32dSOUmWVCQ" name="DeriveReqt5" supplier="_iaikcXP1EeS32dSOUmWVCQ" client="_iajLgnP1EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_-JEhAHP1EeS32dSOUmWVCQ" name="Refine2" supplier="_wcFzoHP1EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_cFHeAHP2EeS32dSOUmWVCQ" name="User informations" clientDependency="_fcEywHP2EeS32dSOUmWVCQ" isAbstract="true" id="1.2.11" text="&#xD;&#xA;Nom&#xD;&#xA;Nom d'utilisateur&#xD;&#xA;Mot de passe x2&#xD;&#xA;MDL id&#xD;&#xA;Admin/utilisateur"/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_fcEywHP2EeS32dSOUmWVCQ" name="Refine3" supplier="_VVdvIHP2EeS32dSOUmWVCQ" client="_cFHeAHP2EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_i7h8MHP2EeS32dSOUmWVCQ" name="DeriveReqt6" supplier="_iaikcXP1EeS32dSOUmWVCQ" client="_iajLgHP1EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_j4MYwHP2EeS32dSOUmWVCQ" name="Switch" clientDependency="_nuD3EHP2EeS32dSOUmWVCQ" isAbstract="true" id="1.9.1" text="Un utilisateur peut changer de système a tout moment."/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_lcljsHP2EeS32dSOUmWVCQ" name="USB interface" clientDependency="_oUkdcHP2EeS32dSOUmWVCQ" isAbstract="true" id="1.9.0" text="L'interface de gestion de contact USB doit pemettre de controller la conexion physique des periphériques USB."/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_nuD3EHP2EeS32dSOUmWVCQ" name="DeriveReqt7" supplier="_lcljsHP2EeS32dSOUmWVCQ" client="_j4MYwHP2EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_oUkdcHP2EeS32dSOUmWVCQ" name="DeriveReqt8" supplier="_iajLgHP1EeS32dSOUmWVCQ" client="_lcljsHP2EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_qL_SEHP2EeS32dSOUmWVCQ" name="Changing delay" clientDependency="_tLr9YHP2EeS32dSOUmWVCQ" isAbstract="true" id="1.9.11" text="Le "/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_tLr9YHP2EeS32dSOUmWVCQ" name="Refine4" supplier="_j4MYwHP2EeS32dSOUmWVCQ" client="_qL_SEHP2EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_xUWb4HP2EeS32dSOUmWVCQ" name="Stop playing" clientDependency="_zSwCQHP2EeS32dSOUmWVCQ" isAbstract="true" id="1.9.2" text="Un joueur peut arrêter de jouer à n'importe quel moment."/>
      <packagedElement xmi:type="sysML:DeriveReqt" xmi:id="_zSwCQHP2EeS32dSOUmWVCQ" name="DeriveReqt9" supplier="_lcljsHP2EeS32dSOUmWVCQ" client="_xUWb4HP2EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_1u2RQHP2EeS32dSOUmWVCQ" name="Time" clientDependency="_Gx14MHP3EeS32dSOUmWVCQ" isAbstract="true" id="1.1.3" text="Si un joueur utilise tout son crédit, il pourra continuer a jouer tant qu'aucun autre joueur ne demande à jouer ."/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_B0MScHP3EeS32dSOUmWVCQ" name="Time credit " clientDependency="_HIalIHP3EeS32dSOUmWVCQ" isAbstract="true" id="1.1.2" text="Le crédit d'un joueur dépend de l'utilisation du système."/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_D8SnYHP3EeS32dSOUmWVCQ" name="Time credit combination." clientDependency="_Hf4C4HP3EeS32dSOUmWVCQ" isAbstract="true" id="1.1.12" text="Si un utilisateur décide de jouer avec d'autres uilisateurs, leur crédit s'ajoutent."/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_Gx14MHP3EeS32dSOUmWVCQ" name="Refine5" supplier="_CSX4sHP2EeS32dSOUmWVCQ" client="_1u2RQHP2EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_HIalIHP3EeS32dSOUmWVCQ" name="Refine6" supplier="_CSX4sHP2EeS32dSOUmWVCQ" client="_B0MScHP3EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_Hf4C4HP3EeS32dSOUmWVCQ" name="Refine7" supplier="_CSX4sHP2EeS32dSOUmWVCQ" client="_D8SnYHP3EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_OPlcIHP3EeS32dSOUmWVCQ" name="Bloquage des manettes" isAbstract="true" id="1.7.0" text="Le système doit empêcher le vol des manettes. &#xD;&#xA;">
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_OPlcIXP3EeS32dSOUmWVCQ" name="Lock" isAbstract="true" id="1.7.4" text="The system must know when a controller is lock or not"/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_OPlcInP3EeS32dSOUmWVCQ" name="Report" isAbstract="true" id="1.7.3" text="The system must create a report in case of problem"/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_OPlcI3P3EeS32dSOUmWVCQ" name="Alert" isAbstract="true" id="1.7.1" text="The system must alert when a controller leaves the room "/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_UBbe8HP3EeS32dSOUmWVCQ" name="Alarme" isAbstract="true" id="1.7.1" text="Le système doit émettre une alarme si une manette quitte la salle."/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_PlthkHP3EeS32dSOUmWVCQ" name="Rapport" isAbstract="true" id="1.7.3" text="Le système doit créer un rapport en cas de problème."/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_Wpkl4HP3EeS32dSOUmWVCQ" name="Verouillage" isAbstract="true" id="1.7.4" text="Le système doit savoir si un peripherique est vérrouillé ou non."/>
        <nestedClassifier xmi:type="sysML:Requirement" xmi:id="_7nGhEHZGEeSp7MW_NKoWww" name="Résistance" isAbstract="true" id="1.7.2" text="Le système doit résister aux violences."/>
      </packagedElement>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_RGh0EHP3EeS32dSOUmWVCQ" name="Logs" clientDependency="_dVrRgHP3EeS32dSOUmWVCQ" isAbstract="true" id="1.7.3.1" text="Le rapport doit contenir le nom de l'utilisateur, la date et le problème rencontré."/>
      <packagedElement xmi:type="sysML:Requirement" xmi:id="_YK6c0HP3EeS32dSOUmWVCQ" name="Resistance" clientDependency="_fx8foHP3EeS32dSOUmWVCQ" isAbstract="true" id="1.7.5" text="The system must resist to a angry gamer"/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_dVrRgHP3EeS32dSOUmWVCQ" name="Refine8" supplier="_PlthkHP3EeS32dSOUmWVCQ" client="_RGh0EHP3EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:Refine" xmi:id="_fx8foHP3EeS32dSOUmWVCQ" name="Refine9" supplier="_OPlcIHP3EeS32dSOUmWVCQ" client="_YK6c0HP3EeS32dSOUmWVCQ"/>
      <packagedElement xmi:type="sysML:TestCase" xmi:id="_gVWAEHZGEeSp7MW_NKoWww" name="Le système doit résister à un joueur énervé." clientDependency="_B_52MHZHEeSp7MW_NKoWww"/>
      <packagedElement xmi:type="sysML:Verify" xmi:id="_B_52MHZHEeSp7MW_NKoWww" name="Verify1" supplier="_7nGhEHZGEeSp7MW_NKoWww" client="_gVWAEHZGEeSp7MW_NKoWww"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_ctO0sCXLEd-dqNMA4nrGhQ" name="collaborations">
      <packagedElement xmi:type="uml:Collaboration" xmi:id="_EAeqQCXPEd-dqNMA4nrGhQ" name="UC1"/>
    </packagedElement>
  </packagedElement>
  <packagedElement xmi:type="uml:Package" xmi:id="_EtQ0kCXLEd-dqNMA4nrGhQ" name="allocation">
    <packageImport xmi:type="uml:PackageImport" xmi:id="_Ws5GECXPEd-dqNMA4nrGhQ" importedPackage="idPackage"/>
    <packageImport xmi:type="uml:PackageImport" xmi:id="_XSl0ICXPEd-dqNMA4nrGhQ" importedPackage="_FVDNUCXLEd-dqNMA4nrGhQ"/>
    <packagedElement xmi:type="uml:Package" xmi:id="_-Qa6sCXPEd-dqNMA4nrGhQ" name="logical2Logical"/>
    <packagedElement xmi:type="uml:Package" xmi:id="_-o3P4CXPEd-dqNMA4nrGhQ" name="logical2Physical"/>
  </packagedElement>
  <packagedElement xmi:type="uml:Package" xmi:id="_FVDNUCXLEd-dqNMA4nrGhQ" name="physicalView">
    <packageImport xmi:type="uml:PackageImport" xmi:id="_zd7v4CXMEd-dqNMA4nrGhQ" importedPackage="_Ft7nYCXLEd-dqNMA4nrGhQ"/>
    <packagedElement xmi:type="uml:Package" xmi:id="_yMIJwCXMEd-dqNMA4nrGhQ" name="structure">
      <packagedElement xmi:type="sysML:Block" xmi:id="__k8lACXMEd-dqNMA4nrGhQ" name="GAM_V2">
        <ownedAttribute xmi:type="uml:Property" xmi:id="_Lgei4CXNEd-dqNMA4nrGhQ" name="h1" type="_AQT2MCXNEd-dqNMA4nrGhQ" aggregation="composite" association="_Lgei7yXNEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Lgei4SXNEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Lgei4iXNEd-dqNMA4nrGhQ" value="1"/>
        </ownedAttribute>
        <ownedAttribute xmi:type="uml:Property" xmi:id="_MLi5ICXNEd-dqNMA4nrGhQ" name="h2" type="_A00RcCXNEd-dqNMA4nrGhQ" aggregation="composite" association="_MLi5LiXNEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_MLi5ISXNEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_MLi5IiXNEd-dqNMA4nrGhQ" value="1"/>
        </ownedAttribute>
      </packagedElement>
      <packagedElement xmi:type="sysML:Block" xmi:id="_AQT2MCXNEd-dqNMA4nrGhQ" name="Hardware1"/>
      <packagedElement xmi:type="sysML:Block" xmi:id="_A00RcCXNEd-dqNMA4nrGhQ" name="Hardware2"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_Lgei7yXNEd-dqNMA4nrGhQ" name="A_&lt;olderTemplate>_&lt;hardware1>" memberEnd="_Lgei8CXNEd-dqNMA4nrGhQ _Lgei4CXNEd-dqNMA4nrGhQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_Lgei8CXNEd-dqNMA4nrGhQ" name="source" type="__k8lACXMEd-dqNMA4nrGhQ" association="_Lgei7yXNEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_Lgei8SXNEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_Lgei8iXNEd-dqNMA4nrGhQ" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_MLi5LiXNEd-dqNMA4nrGhQ" name="A_&lt;olderTemplate>_&lt;hardware2>" memberEnd="_MLi5LyXNEd-dqNMA4nrGhQ _MLi5ICXNEd-dqNMA4nrGhQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_MLi5LyXNEd-dqNMA4nrGhQ" name="source" type="__k8lACXMEd-dqNMA4nrGhQ" association="_MLi5LiXNEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_MLi5MCXNEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_MLi5MSXNEd-dqNMA4nrGhQ" value="1"/>
        </ownedEnd>
      </packagedElement>
    </packagedElement>
  </packagedElement>
  <packagedElement xmi:type="uml:Package" xmi:id="_Ft7nYCXLEd-dqNMA4nrGhQ" name="context">
    <packagedElement xmi:type="uml:Package" xmi:id="_bxCcwCXMEd-dqNMA4nrGhQ" name="actors">
      <packagedElement xmi:type="uml:Actor" xmi:id="_n6IVgiXMEd-dqNMA4nrGhQ" name="Actor1"/>
      <packagedElement xmi:type="uml:Actor" xmi:id="_oB4jUiXMEd-dqNMA4nrGhQ" name="Actor2"/>
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_cuuNACXMEd-dqNMA4nrGhQ" name="interfaces"/>
    <packagedElement xmi:type="uml:Package" xmi:id="_cRXioCXMEd-dqNMA4nrGhQ" name="physicalLaws"/>
  </packagedElement>
  <profileApplication xmi:type="uml:ProfileApplication" xmi:id="idProfileApplication">
    <eAnnotations xmi:type="ecore:EAnnotation" xmi:id="idProfileAnnotation" source="http://www.eclipse.org/uml2/2.0.0/UML">
      <references xmi:type="ecore:EPackage" href="pathmap://SysMLActivityExtensionsProfile.uml#ProfileContentId"/>
    </eAnnotations>
    <appliedProfile xmi:type="uml:Profile" href="pathmap://SysMLActivityExtensionsProfile.uml#ActivityProfileId"/>
  </profileApplication>
</uml:Model>
