<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="GAM_V2">
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
      <packagedElement xmi:type="uml:UseCase" xmi:id="_sDGjwHDMEeSvY-8P7kxBvA" name="Inscription"/>
      <packagedElement xmi:type="uml:UseCase" xmi:id="_uCb-QHDMEeSvY-8P7kxBvA" name="Gerer le materiel"/>
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
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_by-L4CXLEd-dqNMA4nrGhQ" name="structure">
      <packagedElement xmi:type="sysML:Block" xmi:id="_pjJ26yXOEd-dqNMA4nrGhQ" name="GAM_V2">
        <ownedAttribute xmi:type="uml:Property" xmi:id="_xucdUCXOEd-dqNMA4nrGhQ" name="b1" type="_prpEgCXOEd-dqNMA4nrGhQ" aggregation="composite" association="_xucdXyXOEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xucdUSXOEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xucdUiXOEd-dqNMA4nrGhQ" value="1"/>
        </ownedAttribute>
        <ownedAttribute xmi:type="uml:Property" xmi:id="_yLpWsCXOEd-dqNMA4nrGhQ" name="b2" type="_pxmimyXOEd-dqNMA4nrGhQ" aggregation="composite" association="_yLpWviXOEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_yLpWsSXOEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_yLpWsiXOEd-dqNMA4nrGhQ" value="1"/>
        </ownedAttribute>
      </packagedElement>
      <packagedElement xmi:type="sysML:Block" xmi:id="_prpEgCXOEd-dqNMA4nrGhQ" name="Block1"/>
      <packagedElement xmi:type="sysML:Block" xmi:id="_pxmimyXOEd-dqNMA4nrGhQ" name="Block2"/>
      <packagedElement xmi:type="uml:Association" xmi:id="_xucdXyXOEd-dqNMA4nrGhQ" name="A_&lt;templateApproach>_&lt;block1>" memberEnd="_xucdYCXOEd-dqNMA4nrGhQ _xucdUCXOEd-dqNMA4nrGhQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_xucdYCXOEd-dqNMA4nrGhQ" name="source" type="_pjJ26yXOEd-dqNMA4nrGhQ" association="_xucdXyXOEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_xucdYSXOEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_xucdYiXOEd-dqNMA4nrGhQ" value="1"/>
        </ownedEnd>
      </packagedElement>
      <packagedElement xmi:type="uml:Association" xmi:id="_yLpWviXOEd-dqNMA4nrGhQ" name="A_&lt;templateApproach>_&lt;block2>" memberEnd="_yLpWvyXOEd-dqNMA4nrGhQ _yLpWsCXOEd-dqNMA4nrGhQ">
        <ownedEnd xmi:type="uml:Property" xmi:id="_yLpWvyXOEd-dqNMA4nrGhQ" name="source" type="_pjJ26yXOEd-dqNMA4nrGhQ" association="_yLpWviXOEd-dqNMA4nrGhQ">
          <upperValue xmi:type="uml:LiteralUnlimitedNatural" xmi:id="_yLpWwCXOEd-dqNMA4nrGhQ" value="1"/>
          <lowerValue xmi:type="uml:LiteralInteger" xmi:id="_yLpWwSXOEd-dqNMA4nrGhQ" value="1"/>
        </ownedEnd>
      </packagedElement>
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_cS3M4CXLEd-dqNMA4nrGhQ" name="events"/>
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
