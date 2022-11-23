/*
 * generated by Xtext 2.28.0
 */
grammar InternalGameDSL;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package gameoflife.grid.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package gameoflife.grid.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import gameoflife.grid.services.GameDSLGrammarAccess;

}

@parser::members {

 	private GameDSLGrammarAccess grammarAccess;

    public InternalGameDSLParser(TokenStream input, GameDSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Grid";
   	}

   	@Override
   	protected GameDSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleGrid
entryRuleGrid returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getGridRule()); }
	iv_ruleGrid=ruleGrid
	{ $current=$iv_ruleGrid.current; }
	EOF;

// Rule Grid
ruleGrid returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='Grid:'
		{
			newLeafNode(otherlv_0, grammarAccess.getGridAccess().getGridKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getGridAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getGridRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getGridAccess().getCellsCellParserRuleCall_2_0());
				}
				lv_cells_2_0=ruleCell
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getGridRule());
					}
					add(
						$current,
						"cells",
						lv_cells_2_0,
						"gameoflife.grid.GameDSL.Cell");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleCell
entryRuleCell returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCellRule()); }
	iv_ruleCell=ruleCell
	{ $current=$iv_ruleCell.current; }
	EOF;

// Rule Cell
ruleCell returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='row:'
		{
			newLeafNode(otherlv_0, grammarAccess.getCellAccess().getRowKeyword_0());
		}
		(
			(
				lv_row_1_0=RULE_INT
				{
					newLeafNode(lv_row_1_0, grammarAccess.getCellAccess().getRowINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCellRule());
					}
					setWithLastConsumed(
						$current,
						"row",
						lv_row_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		otherlv_2='col:'
		{
			newLeafNode(otherlv_2, grammarAccess.getCellAccess().getColKeyword_2());
		}
		(
			(
				lv_col_3_0=RULE_INT
				{
					newLeafNode(lv_col_3_0, grammarAccess.getCellAccess().getColINTTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCellRule());
					}
					setWithLastConsumed(
						$current,
						"col",
						lv_col_3_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		otherlv_4='neighbours:'
		{
			newLeafNode(otherlv_4, grammarAccess.getCellAccess().getNeighboursKeyword_4());
		}
		(
			(
				lv_neighbours_5_0=RULE_INT
				{
					newLeafNode(lv_neighbours_5_0, grammarAccess.getCellAccess().getNeighboursINTTerminalRuleCall_5_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCellRule());
					}
					setWithLastConsumed(
						$current,
						"neighbours",
						lv_neighbours_5_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getCellAccess().getStateStateEnumRuleCall_6_0());
				}
				lv_state_6_0=ruleState
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCellRule());
					}
					set(
						$current,
						"state",
						lv_state_6_0,
						"gameoflife.grid.GameDSL.State");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Rule State
ruleState returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='dead'
			{
				$current = grammarAccess.getStateAccess().getDeadEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getStateAccess().getDeadEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='alive'
			{
				$current = grammarAccess.getStateAccess().getAliveEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getStateAccess().getAliveEnumLiteralDeclaration_1());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;