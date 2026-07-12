.class public Ldev/ukanth/ufirewall/util/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x3


# instance fields
.field private final mBottomBorderPaint:Landroid/graphics/Paint;

.field private final mBottomBorderThickness:I

.field private mCustomTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;

.field private final mDefaultBottomBorderColor:I

.field private final mDefaultTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private final mSelectedIndicatorThickness:I

.field private mSelectedPosition:I

.field private mSelectionOffset:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 44
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 46
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 48
    iget p2, p2, Landroid/util/TypedValue;->data:I

    const/16 v0, 0x26

    .line 50
    invoke-static {p2, v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->setColorAlpha(IB)I

    move-result p2

    iput p2, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mDefaultBottomBorderColor:I

    .line 53
    new-instance v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;-><init>(Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer-IA;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mDefaultTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;

    const v1, -0xcc4a1b

    filled-new-array {v1}, [I

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    const/4 v0, 0x0

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mBottomBorderThickness:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40400000    # 3.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedIndicatorThickness:I

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 136
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 137
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 138
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    .line 139
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static setColorAlpha(IB)I
    .locals 2

    .line 125
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 84
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getHeight()I

    move-result v1

    .line 85
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildCount()I

    move-result v2

    iget-object v3, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mCustomTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mDefaultTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;

    :goto_0
    if-lez v2, :cond_3

    iget v2, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedPosition:I

    .line 92
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v5, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedPosition:I

    .line 95
    invoke-interface {v3, v5}, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v5

    iget v6, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectionOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedPosition:I

    .line 97
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    iget v6, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    .line 98
    invoke-interface {v3, v6}, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v3

    if-eq v5, v3, :cond_1

    iget v6, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectionOffset:F

    .line 100
    invoke-static {v3, v5, v6}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->blendColors(IIF)I

    move-result v3

    move v5, v3

    :cond_1
    iget v3, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    .line 104
    invoke-virtual {v0, v3}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v6, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectionOffset:F

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    iget v7, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectionOffset:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v7

    int-to-float v4, v4

    mul-float v9, v9, v4

    add-float/2addr v6, v9

    float-to-int v4, v6

    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v7, v7, v3

    iget v3, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v8, v3

    int-to-float v2, v2

    mul-float v8, v8, v2

    add-float/2addr v7, v8

    float-to-int v2, v7

    :cond_2
    iget-object v3, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v4

    iget v3, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedIndicatorThickness:I

    sub-int v3, v1, v3

    int-to-float v8, v3

    int-to-float v9, v2

    int-to-float v10, v1

    iget-object v11, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    .line 113
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v13, 0x0

    iget v2, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mBottomBorderThickness:I

    sub-int v2, v1, v2

    int-to-float v14, v2

    .line 118
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getWidth()I

    move-result v2

    int-to-float v15, v2

    int-to-float v1, v1

    iget-object v2, v0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mBottomBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method onViewPagerPageChanged(IF)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectedPosition:I

    iput p2, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mSelectionOffset:F

    .line 79
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->invalidate()V

    return-void
.end method

.method setCustomTabColorizer(Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mCustomTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;

    .line 66
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->invalidate()V

    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mCustomTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->mDefaultTabColorizer:Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;

    .line 72
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 73
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->invalidate()V

    return-void
.end method
