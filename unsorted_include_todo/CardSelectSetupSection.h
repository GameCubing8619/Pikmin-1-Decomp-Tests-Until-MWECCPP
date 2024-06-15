#ifndef _CARDSELECTSETUPSECTION_H
#define _CARDSELECTSETUPSECTION_H

/**
 * .obj __vt__22CardSelectSetupSection, weak
 * .4byte __RTTI__22CardSelectSetupSection
 * .4byte 0
 * .4byte getAgeNodeType__5ANodeFv
 * .4byte read__8CoreNodeFR18RandomAccessStream
 * .4byte update__22CardSelectSetupSectionFv
 * .4byte draw__22CardSelectSetupSectionFR8Graphics
 * .4byte render__4NodeFR8Graphics
 * .4byte concat__4NodeFv
 * .4byte concat__4NodeFR3VQS
 * .4byte concat__4NodeFR3SRT
 * .4byte concat__4NodeFR8Matrix4f
 * .4byte getModelMatrix__4NodeFv
 */

struct ANode {
	virtual void getAgeNodeType(); // _08 (weak)
};

struct CoreNode {
	virtual void _08() = 0;                 // _08
	virtual void read(RandomAccessStream&); // _0C (weak)
};

struct Node {
	virtual void _08() = 0;         // _08
	virtual void _0C() = 0;         // _0C
	virtual void update();          // _10 (weak)
	virtual void draw(Graphics&);   // _14 (weak)
	virtual void render(Graphics&); // _18
	virtual void concat();          // _1C (weak)
	virtual void concat(VQS&);      // _20 (weak)
	virtual void concat(SRT&);      // _24 (weak)
	virtual void concat(Matrix4f&); // _28 (weak)
	virtual void getModelMatrix();  // _2C (weak)
};

/**
 * @brief TODO
 */
struct CardSelectSetupSection : public ANode, public CoreNode, public Node {
	virtual void update();        // _10 (weak)
	virtual void draw(Graphics&); // _14 (weak)
};

#endif