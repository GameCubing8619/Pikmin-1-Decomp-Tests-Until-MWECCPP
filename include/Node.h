#ifndef _NODE_H
#define _NODE_H

#include "types.h"
#include "CoreNode.h"
#include "Graphics.h"
#include "Matrix4f.h"
#include "Animator.h"

/**
 * @brief TODO
 */
struct Node : public CoreNode {
	Node(char* name);

	Node()
	    : CoreNode("<Node>")
	{
		init("<Node>");
	}

	virtual void update();                                 // _10
	virtual void draw(Graphics&);                          // _14
	virtual void render(Graphics&);                        // _18
	virtual void concat() { }                              // _1C (weak)
	virtual void concat(struct VQS&);                      // _20 (weak)
	virtual void concat(SRT&);                             // _24 (weak)
	virtual void concat(Matrix4f&);                        // _28 (weak)
	virtual Matrix4f* getModelMatrix() { return nullptr; } // _2C (weak)

	void init(char*);

	// _00     = VTBL
	// _00-_14 = CoreNode
	s32 mType;  // _14
	s32 mFlags; // _18
	s32 _1C;    // _1C
};

struct FaceNode : public CoreNode {
	inline FaceNode()
	    : CoreNode("face")
	{
	}
	inline FaceNode(int) { }

	// _00     = VTBL
	// _00-_14 = CoreNode
	int _14; // _14
	int _18; // _18
	int _1C; // _1C
	int _20; // _20
	int _24; // _24
	int _28; // _28
	int _2C; // _2C
	int _30; // _30
	int _34; // _34
	int _38; // _38
	int _3C; // _3C
	int _40; // _40
	int _44; // _44
};

struct SRTNode : public Node {
	SRTNode(char* name = "<SRTNode>")
	    : Node(name)
	{
	}

	virtual void update();                                    // _10
	virtual void concat();                                    // _1C (weak)
	virtual void concat(Matrix4f&);                           // _28 (weak)
	virtual Matrix4f* getModelMatrix() { return &mWorldMtx; } // _2C (weak)

	Vector3f& getPosition() { return mSRT.mTranslation; }
	Vector3f& getRotation() { return mSRT.mRotation; }
	Vector3f& getScale() { return mSRT.mScale; }
	Vector3f& getWorldPosition() { return (Vector3f&)mWorldMtx.mMtx[3]; }
	void setPosition(Vector3f& pos) { mSRT.mTranslation = pos; }
	void setRotation(Vector3f& rot) { mSRT.mRotation = rot; }
	void setScale(Vector3f& scale) { mSRT.mScale = scale; }

	// _00 - VTBL
	// _00 - _14 - CoreNode
	// _14 - _20 - Node
	Matrix4f mWorldMtx; // _20
	SRT mSRT;           // _60
};

/**
 * @brief TODO
 */
struct NodeMgr {
	NodeMgr();
	~NodeMgr();

	inline CoreNode& firstNode() { return mRootNode; }

	CoreNode* findNode(char*, CoreNode*);
	void recFindNode(CoreNode*, char*);
	void Del(Node*);

	bool mDelete;       // _00
	CoreNode mRootNode; // _04
};

extern NodeMgr* nodeMgr;

#endif
