<?xml version="1.0" encoding="UTF-8"?>
<uml:Model xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:ecore="http://www.eclipse.org/emf/2002/Ecore" xmlns:sysML="http://www.topcased.org/2.0/sysML" xmlns:uml="http://www.eclipse.org/uml2/3.0.0/UML" xmi:id="idModel" name="GAMap">
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
    </packagedElement>
    <packagedElement xmi:type="uml:Package" xmi:id="_by-L4CXLEd-dqNMA4nrGhQ" name="structure">
      <packagedElement xmi:type="sysML:Block" xmi:id="_pjJ26yXOEd-dqNMA4nrGhQ" name="GAMap">
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
      <packagedElement xmi:type="sysML:Block" xmi:id="__k8lACXMEd-dqNMA4nrGhQ" name="GAMap">
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
