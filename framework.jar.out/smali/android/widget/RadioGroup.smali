.class public Landroid/widget/RadioGroup;
.super Landroid/widget/LinearLayout;
.source "RadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RadioGroup$1;,
        Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;,
        Landroid/widget/RadioGroup$CheckedStateTracker;,
        Landroid/widget/RadioGroup$OnCheckedChangeListener;,
        Landroid/widget/RadioGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 71
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v5, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 61
    iput-boolean v6, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 82
    sget-object v3, Lcom/android/internal/R$styleable;->RadioGroup:[I

    const v4, 0x101007e

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, attributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 86
    .local v2, value:I
    if-eq v2, v5, :cond_0

    .line 87
    iput v2, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 90
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 91
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 93
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-direct {p0}, Landroid/widget/RadioGroup;->init()V

    .line 95
    return-void
.end method

.method static synthetic access$300(Landroid/widget/RadioGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RadioGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Landroid/widget/RadioGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/RadioGroup;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/RadioGroup;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Landroid/widget/RadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$CheckedStateTracker;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 99
    new-instance v0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$1;)V

    iput-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    .line 100
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 101
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 173
    iput p1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    .line 174
    iget-object v0, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 177
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .parameter "viewId"
    .parameter "checked"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, checkedView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Landroid/widget/RadioButton;

    .end local v0           #checkedView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 130
    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 131
    check-cast v0, Landroid/widget/RadioButton;

    .line 132
    .local v0, button:Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 134
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 135
    iget v1, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 137
    :cond_0
    iput-boolean v3, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 138
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 142
    .end local v0           #button:Landroid/widget/RadioButton;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public check(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 157
    if-eq p1, v2, :cond_0

    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_1

    .line 162
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 165
    :cond_1
    if-eq p1, v2, :cond_2

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 169
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 236
    instance-of v0, p1, Landroid/widget/RadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 211
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 241
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RadioGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 228
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 120
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 121
    iput-boolean v2, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 122
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Landroid/widget/RadioGroup;->setCheckedStateForView(IZ)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RadioGroup;->mProtectFromCheckedChange:Z

    .line 124
    iget v0, p0, Landroid/widget/RadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Landroid/widget/RadioGroup;->setCheckedId(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 247
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 253
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 220
    iput-object p1, p0, Landroid/widget/RadioGroup;->mOnCheckedChangeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 221
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/widget/RadioGroup;->mPassThroughListener:Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;

    #setter for: Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->access$202(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 110
    return-void
.end method