.class public Ldev/ukanth/ufirewall/widget/RadialMenuWidget;
.super Landroid/view/View;
.source "RadialMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;,
        Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;
    }
.end annotation


# static fields
.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2


# instance fields
.field private HeaderBoxBounded:Z

.field private MaxIconSize:I

.field private MaxSize:I

.field private MinIconSize:I

.field private MinSize:I

.field private Wedge2Shown:Z

.field private Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

.field private Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

.field private animateOuterIn:Z

.field private animateOuterOut:Z

.field private final animateSections:I

.field private animateTextSize:I

.field private animationSpeed:J

.field private cRadius:I

.field private centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

.field private defaultAlpha:I

.field private defaultColor:I

.field private disabledAlpha:I

.field private disabledColor:I

.field private enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

.field private headerBackgroundAlpha:I

.field private headerBackgroundColor:I

.field private final headerBuffer:I

.field private headerString:Ljava/lang/String;

.field private headerTextAlpha:I

.field private headerTextBottom:I

.field private headerTextColor:I

.field private headerTextLeft:I

.field private headerTextSize:I

.field private iconRect:[Landroid/graphics/Rect;

.field private iconRect2:[Landroid/graphics/Rect;

.field private inCircle:Z

.field private inWedge:Z

.field private inWedge2:Z

.field private final menuEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;",
            ">;"
        }
    .end annotation
.end field

.field private move:Landroid/view/animation/TranslateAnimation;

.field private outlineAlpha:I

.field private outlineColor:I

.field private final pictureAlpha:I

.field private r2MaxSize:I

.field private r2MinSize:I

.field private r2VariableSize:I

.field private scale:Landroid/view/animation/ScaleAnimation;

.field private final screen_density:F

.field private selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

.field private selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

.field private selectedAlpha:I

.field private selectedColor:I

.field private showSource:Z

.field private spriteAnimation:Landroid/view/animation/AnimationSet;

.field private textAlpha:I

.field private final textBoxRect:Landroid/graphics/RectF;

.field private textColor:I

.field private final textRect:Landroid/graphics/Rect;

.field private textSize:I

.field private wedge2Alpha:I

.field private wedge2Color:I

.field private wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

.field private wedgeQty:I

.field private wedgeQty2:I

.field private xPosition:I

.field private xSource:I

.field private yPosition:I

.field private ySource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 133
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 43
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->screen_density:F

    const/4 v1, 0x0

    .line 45
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultColor:I

    const/16 v2, 0xb4

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultAlpha:I

    const/16 v3, 0x55

    .line 47
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Color:I

    const/16 v4, 0xd2

    iput v4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Alpha:I

    const/16 v5, 0xff

    .line 49
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    iput v6, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    iput v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    .line 51
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    iput v6, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedColor:I

    iput v4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedAlpha:I

    .line 54
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledColor:I

    const/16 v3, 0x64

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    iput v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->pictureAlpha:I

    .line 59
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    iput v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 62
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextColor:I

    iput v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextAlpha:I

    .line 64
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBackgroundColor:I

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBackgroundAlpha:I

    const/4 v2, 0x1

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty:I

    new-array v3, v2, [Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect:[Landroid/graphics/Rect;

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    new-array v3, v2, [Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    const/16 v2, 0x23

    .line 80
    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v3

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    const/16 v3, 0x5a

    .line 81
    invoke-direct {p0, v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v3

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    const/4 v4, 0x5

    .line 82
    invoke-direct {p0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    const/16 v4, 0x2d

    .line 83
    invoke-direct {p0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    const/16 v3, 0xf

    .line 84
    invoke-direct {p0, v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v4

    iput v4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    .line 85
    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v2

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    const/4 v4, 0x7

    .line 87
    invoke-direct {p0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    .line 88
    invoke-direct {p0, v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v2

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    .line 91
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getSizeX()I

    move-result v2

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    .line 92
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getSizeY()I

    move-result v2

    iput v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iput v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xSource:I

    iput v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->ySource:I

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->showSource:Z

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inWedge:Z

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inWedge2:Z

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inCircle:Z

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->HeaderBoxBounded:Z

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerString:Ljava/lang/String;

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    iput v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextSize:I

    const/16 v0, 0x8

    .line 107
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v0

    iput v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textBoxRect:Landroid/graphics/RectF;

    const-wide/16 v2, 0x190

    iput-wide v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animationSpeed:J

    const/4 v0, 0x4

    iput v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateSections:I

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterIn:Z

    iput-boolean v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterOut:Z

    .line 136
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 137
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 138
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->getWidgetX(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    .line 149
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->getWidgetY(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    .line 153
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    .line 154
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->onOpenAnimation()V

    return-void
.end method

.method private animateOuterWedges(I)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    const/16 v3, 0x168

    .line 922
    div-int/2addr v3, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    const/high16 v5, 0x43870000    # 270.0f

    sub-float v12, v5, v4

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v2

    div-double v13, v4, v6

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v4, v13, v15

    const-wide v6, 0x4012d97c7f3321d2L    # 4.71238898038469

    sub-double v17, v6, v4

    .line 928
    new-array v4, v2, [Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 929
    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    const/4 v2, 0x1

    iput-boolean v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    sub-int v6, v4, v5

    .line 933
    div-int/lit8 v6, v6, 0x4

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    if-ne v1, v9, :cond_5

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int v8, v5, v7

    add-int/2addr v8, v6

    if-ge v8, v4, :cond_0

    add-int/2addr v7, v6

    iput v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    const/16 v21, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterOut:Z

    sub-int/2addr v4, v5

    iput v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    const/16 v21, 0x1

    :goto_0
    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    .line 945
    div-int/lit8 v4, v4, 0x4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    div-int/2addr v5, v6

    mul-int v4, v4, v5

    iput v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    const/4 v8, 0x0

    :goto_1
    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 948
    array-length v4, v7

    if-ge v8, v4, :cond_d

    .line 949
    new-instance v22, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int/2addr v9, v4

    int-to-float v10, v8

    mul-float v10, v10, v3

    add-float/2addr v10, v12

    const/16 v25, 0x0

    move/from16 v26, v4

    move-object/from16 v4, v22

    move-object/from16 v27, v7

    move/from16 v7, v26

    move v2, v8

    move v8, v9

    const/16 v23, 0x2

    move v9, v10

    move v10, v3

    move-object/from16 v11, v25

    invoke-direct/range {v4 .. v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;-><init>(IIIIFFLdev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge-IA;)V

    aput-object v22, v27, v2

    int-to-double v4, v2

    mul-double v4, v4, v13

    mul-double v6, v13, v19

    add-double/2addr v4, v6

    add-double v4, v4, v17

    .line 951
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int/2addr v9, v8

    add-int/2addr v9, v8

    int-to-double v8, v9

    mul-double v6, v6, v8

    div-double/2addr v6, v15

    double-to-float v6, v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 952
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int/2addr v8, v7

    add-int/2addr v8, v7

    int-to-double v7, v8

    mul-double v4, v4, v7

    div-double/2addr v4, v15

    double-to-float v4, v4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 956
    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 957
    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    if-eqz v7, :cond_1

    .line 958
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 959
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v7, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v7

    .line 960
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v5, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v5

    move/from16 v29, v7

    move v7, v5

    move/from16 v5, v29

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    if-ge v8, v5, :cond_2

    move v5, v8

    :cond_2
    if-ge v8, v7, :cond_3

    move v7, v8

    :cond_3
    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    .line 972
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v6, v6

    div-int/lit8 v7, v7, 0x2

    sub-int v10, v6, v7

    float-to-int v4, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v11, v4, v5

    add-int/2addr v6, v7

    add-int/2addr v4, v5

    invoke-direct {v9, v10, v11, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v2

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    iget-object v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 976
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_4

    iget-object v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 977
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v11, 0x3

    invoke-direct {v0, v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    :cond_4
    const/4 v11, 0x3

    :goto_3
    iget-object v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textBoxRect:Landroid/graphics/RectF;

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v7, v8

    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 980
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v0, v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    add-int/2addr v8, v4

    int-to-float v4, v8

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v8, v9

    .line 982
    invoke-direct {v0, v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 979
    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v4, v5

    iget-object v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 983
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextBottom:I

    add-int/lit8 v8, v2, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v23, 0x2

    if-ne v1, v2, :cond_e

    iget v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    sub-int v7, v4, v2

    sub-int/2addr v7, v6

    if-ge v5, v7, :cond_6

    add-int/2addr v2, v6

    iput v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    const/4 v2, 0x0

    const/16 v28, 0x0

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterIn:Z

    iput v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    const/16 v28, 0x1

    :goto_4
    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    .line 998
    div-int/lit8 v5, v4, 0x4

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    div-int/2addr v7, v6

    mul-int v5, v5, v7

    sub-int/2addr v4, v5

    iput v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    const/4 v10, 0x0

    :goto_5
    iget-object v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 1001
    array-length v4, v9

    if-ge v10, v4, :cond_c

    .line 1002
    new-instance v21, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    sub-int v8, v4, v8

    int-to-float v4, v10

    mul-float v4, v4, v3

    add-float v22, v4, v12

    const/16 v24, 0x0

    move-object/from16 v4, v21

    move-object/from16 v25, v9

    move/from16 v9, v22

    move v2, v10

    move v10, v3

    move-object/from16 v11, v24

    invoke-direct/range {v4 .. v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;-><init>(IIIIFFLdev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge-IA;)V

    aput-object v21, v25, v2

    int-to-double v4, v2

    mul-double v4, v4, v13

    mul-double v6, v13, v19

    add-double/2addr v4, v6

    add-double v4, v4, v17

    .line 1005
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    sub-int/2addr v8, v9

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    add-int/2addr v8, v9

    int-to-double v8, v8

    mul-double v6, v6, v8

    div-double/2addr v6, v15

    double-to-float v6, v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1006
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    sub-int/2addr v7, v8

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double v4, v4, v7

    div-double/2addr v4, v15

    double-to-float v4, v4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 1010
    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    if-eqz v7, :cond_7

    .line 1011
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1012
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v7, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v7

    .line 1013
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v5, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v5

    move/from16 v29, v7

    move v7, v5

    move/from16 v5, v29

    goto :goto_6

    :cond_7
    move v7, v5

    :goto_6
    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    sub-int v10, v8, v9

    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    sub-int/2addr v10, v11

    if-ge v10, v5, :cond_8

    sub-int v5, v8, v9

    sub-int/2addr v5, v11

    :cond_8
    sub-int v10, v8, v9

    sub-int/2addr v10, v11

    if-ge v10, v7, :cond_9

    sub-int/2addr v8, v9

    sub-int v7, v8, v11

    :cond_9
    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    .line 1023
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v6, v6

    div-int/lit8 v7, v7, 0x2

    sub-int v10, v6, v7

    float-to-int v4, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v11, v4, v5

    add-int/2addr v6, v7

    add-int/2addr v4, v5

    invoke-direct {v9, v10, v11, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v2

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    sub-int v6, v4, v5

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    sub-int/2addr v4, v5

    if-le v7, v4, :cond_a

    move v6, v7

    :cond_a
    iget-object v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1030
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v7, v4, :cond_b

    iget-object v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1031
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v7

    add-int/2addr v7, v4

    goto :goto_7

    :cond_b
    const/4 v5, 0x3

    :goto_7
    iget-object v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textBoxRect:Landroid/graphics/RectF;

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    sub-int/2addr v8, v7

    int-to-float v8, v8

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    sub-int/2addr v9, v6

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v9, v10

    iget-object v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1034
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v0, v5}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    add-int/2addr v10, v7

    int-to-float v7, v10

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    sub-int/2addr v10, v6

    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v10, v11

    .line 1036
    invoke-direct {v0, v5}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 1033
    invoke-virtual {v4, v8, v9, v7, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    sub-int/2addr v4, v6

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v4, v6

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1037
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    iput v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextBottom:I

    add-int/lit8 v10, v2, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x3

    goto/16 :goto_5

    :cond_c
    move/from16 v21, v28

    :cond_d
    if-eqz v21, :cond_e

    const/4 v2, 0x0

    iput v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2VariableSize:I

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    iput v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    iput-boolean v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    .line 1050
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->invalidate()V

    return-void
.end method

.method private determineHeaderBox()V
    .locals 7

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1131
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextLeft:I

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1132
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextBottom:I

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1134
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1135
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textBoxRect:Landroid/graphics/RectF;

    iget v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    .line 1139
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    add-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v6, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    sub-int/2addr v5, v6

    iget v6, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBuffer:I

    sub-int/2addr v5, v6

    .line 1141
    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    .line 1138
    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private determineOuterWedges(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1091
    invoke-interface/range {p1 .. p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    :cond_0
    iget v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    const/16 v3, 0x168

    .line 1099
    div-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    const/high16 v5, 0x43870000    # 270.0f

    sub-float v12, v5, v4

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v1

    div-double v13, v4, v6

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v6, v13, v15

    sub-double v17, v4, v6

    .line 1105
    new-array v4, v1, [Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 1106
    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    iget-object v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 1108
    array-length v4, v11

    if-ge v1, v4, :cond_2

    .line 1109
    new-instance v19, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    int-to-float v4, v1

    mul-float v4, v4, v3

    add-float v9, v4, v12

    const/16 v20, 0x0

    move-object/from16 v4, v19

    move v10, v3

    move-object/from16 v21, v11

    move-object/from16 v11, v20

    invoke-direct/range {v4 .. v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;-><init>(IIIIFFLdev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge-IA;)V

    aput-object v19, v21, v1

    int-to-double v4, v1

    mul-double v4, v4, v13

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v13

    add-double/2addr v4, v6

    add-double v4, v4, v17

    .line 1111
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    add-int/2addr v8, v9

    int-to-double v8, v8

    mul-double v6, v6, v8

    div-double/2addr v6, v15

    double-to-float v6, v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 1112
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double v4, v4, v7

    div-double/2addr v4, v15

    double-to-float v4, v4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    if-le v5, v2, :cond_1

    .line 1117
    invoke-interface/range {p1 .. p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v5}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1118
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1119
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v7, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v7

    .line 1120
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v5, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v5

    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    .line 1121
    new-instance v9, Landroid/graphics/Rect;

    float-to-int v6, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v10, v6, v5

    float-to-int v4, v4

    div-int/lit8 v7, v7, 0x2

    sub-int v11, v4, v7

    add-int/2addr v6, v5

    add-int/2addr v4, v7

    invoke-direct {v9, v10, v11, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v8, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v1, p1

    iput-object v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 1126
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->invalidate()V

    return-void
.end method

.method private determineWedges()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 1055
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iput v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty:I

    const/16 v2, 0x168

    .line 1059
    div-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    const/high16 v4, 0x43870000    # 270.0f

    sub-float v11, v4, v3

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v5, v1

    div-double v12, v3, v5

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v5, v12, v14

    sub-double v16, v3, v5

    .line 1065
    new-array v3, v1, [Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 1066
    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    iget-object v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 1068
    array-length v3, v10

    if-ge v1, v3, :cond_1

    .line 1069
    new-instance v18, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    int-to-float v3, v1

    mul-float v3, v3, v2

    add-float v8, v3, v11

    const/16 v19, 0x0

    move-object/from16 v3, v18

    move v9, v2

    move-object/from16 v20, v10

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;-><init>(IIIIFFLdev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge-IA;)V

    aput-object v18, v20, v1

    int-to-double v3, v1

    mul-double v3, v3, v12

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v12

    add-double/2addr v3, v5

    add-double v3, v3, v16

    .line 1071
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double v5, v5, v7

    div-double/2addr v5, v14

    double-to-float v5, v5

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 1072
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    mul-double v3, v3, v6

    div-double/2addr v3, v14

    double-to-float v3, v3

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 1076
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1077
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1078
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v6, v7, v8}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v6

    .line 1079
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v4, v7, v8}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v4

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect:[Landroid/graphics/Rect;

    .line 1082
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v5, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v9, v5, v4

    float-to-int v3, v3

    div-int/lit8 v6, v6, 0x2

    sub-int v10, v3, v6

    add-int/2addr v5, v4

    add-int/2addr v3, v6

    invoke-direct {v8, v9, v10, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1085
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->invalidate()V

    :cond_2
    return-void
.end method

.method private getIconSize(III)I
    .locals 0

    if-le p1, p2, :cond_1

    if-le p1, p3, :cond_0

    return p3

    :cond_0
    return p1

    :cond_1
    return p2
.end method

.method private getSizeX()I
    .locals 2

    .line 903
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 904
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method private getSizeY()I
    .locals 2

    .line 910
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 911
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method private onCloseAnimation()V
    .locals 8

    .line 723
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v5, v0

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v6, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v7, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scale:Landroid/view/animation/ScaleAnimation;

    .line 724
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 725
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xSource:I

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->ySource:I

    iget v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->move:Landroid/view/animation/TranslateAnimation;

    .line 727
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scale:Landroid/view/animation/ScaleAnimation;

    .line 729
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->move:Landroid/view/animation/TranslateAnimation;

    .line 730
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    iget-wide v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animationSpeed:J

    .line 731
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    .line 733
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private onOpenAnimation()V
    .locals 8

    .line 705
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v5, v0

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v6, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v7, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scale:Landroid/view/animation/ScaleAnimation;

    .line 708
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 709
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xSource:I

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->ySource:I

    iget v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->move:Landroid/view/animation/TranslateAnimation;

    .line 711
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scale:Landroid/view/animation/ScaleAnimation;

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->move:Landroid/view/animation/TranslateAnimation;

    .line 714
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    iget-wide v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animationSpeed:J

    .line 715
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->spriteAnimation:Landroid/view/animation/AnimationSet;

    .line 717
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private pntInCircle(DDDDD)Z
    .locals 0

    sub-double/2addr p5, p1

    sub-double/2addr p7, p3

    mul-double p5, p5, p5

    mul-double p7, p7, p7

    add-double/2addr p5, p7

    mul-double p9, p9, p9

    cmpg-double p1, p5, p9

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private pntInWedge(DDFFIIDD)Z
    .locals 14

    move/from16 v0, p5

    float-to-double v0, v0

    sub-double v0, p1, v0

    move/from16 v2, p6

    float-to-double v2, v2

    sub-double v2, p3, v2

    .line 752
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v10, v4, v6

    if-gez v10, :cond_0

    add-double/2addr v4, v8

    :cond_0
    cmpl-double v6, p9, v8

    if-ltz v6, :cond_1

    sub-double v6, p9, v8

    goto :goto_0

    :cond_1
    move-wide/from16 v6, p9

    :goto_0
    const/4 v10, 0x0

    cmpl-double v11, v4, v6

    if-ltz v11, :cond_2

    add-double v11, v6, p11

    cmpg-double v13, v4, v11

    if-lez v13, :cond_3

    :cond_2
    add-double/2addr v4, v8

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_4

    add-double v6, v6, p11

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_4

    :cond_3
    mul-double v0, v0, v0

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    mul-int v2, p8, p8

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_4

    mul-int v2, p7, p7

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_4

    const/4 v10, 0x1

    :cond_4
    return v10
.end method

.method private scalePX(I)I
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->screen_density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public addMenuEntry(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 774
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 283
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 284
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v4, 0x40400000    # 3.0f

    .line 285
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->showSource:Z

    if-eqz v4, :cond_0

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    .line 289
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    .line 290
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 291
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xSource:I

    int-to-float v4, v4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->ySource:I

    int-to-float v5, v5

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    .line 292
    div-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedColor:I

    .line 294
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedAlpha:I

    .line 295
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xSource:I

    int-to-float v4, v4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->ySource:I

    int-to-float v5, v5

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    .line 297
    div-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 301
    array-length v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    const-string v11, "\n"

    const/4 v12, 0x2

    if-ge v5, v7, :cond_f

    .line 302
    aget-object v6, v6, v5

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    .line 303
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    .line 304
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-ne v6, v7, :cond_1

    iget-boolean v13, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v13, :cond_1

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Color:I

    .line 308
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Alpha:I

    .line 309
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    if-eq v6, v7, :cond_2

    iget-boolean v13, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v13, :cond_2

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledColor:I

    .line 313
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    .line 314
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 315
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_3

    iget-boolean v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-nez v7, :cond_3

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Color:I

    .line 318
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Alpha:I

    .line 319
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 320
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-ne v6, v7, :cond_4

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Color:I

    .line 323
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Alpha:I

    .line 324
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 326
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultColor:I

    .line 328
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultAlpha:I

    .line 329
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 331
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect:[Landroid/graphics/Rect;

    .line 334
    aget-object v7, v7, v5

    iget-object v13, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 336
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v13}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v13}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 339
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v8}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v8

    .line 340
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    .line 342
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eq v6, v11, :cond_5

    iget-boolean v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v11, :cond_5

    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    .line 344
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_5
    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 346
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    :goto_2
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    int-to-float v11, v11

    .line 349
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 353
    :goto_3
    array-length v14, v8

    if-ge v13, v14, :cond_6

    .line 355
    aget-object v14, v8, v13

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2, v14, v4, v15, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 356
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/lit8 v14, v14, 0x3

    int-to-float v14, v14

    add-float/2addr v9, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 359
    :cond_6
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 360
    iget v14, v7, Landroid/graphics/Rect;->left:I

    iget v15, v7, Landroid/graphics/Rect;->top:I

    float-to-int v9, v9

    div-int/2addr v9, v12

    sub-int/2addr v15, v9

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v9

    invoke-virtual {v13, v14, v15, v3, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 362
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const/4 v9, 0x0

    .line 363
    :goto_4
    array-length v10, v8

    if-ge v9, v10, :cond_7

    .line 365
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v10, v4, v14, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 366
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v12

    sub-int/2addr v10, v14

    int-to-float v10, v10

    .line 367
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/lit8 v14, v14, 0x3

    int-to-float v14, v14

    add-float/2addr v3, v14

    .line 368
    aget-object v14, v8, v9

    iget v15, v11, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v10, v15

    iget v15, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float v15, v3, v15

    invoke-virtual {v1, v14, v10, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 372
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 373
    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eq v6, v7, :cond_8

    iget-boolean v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v6, :cond_8

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    .line 375
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    :cond_8
    const/16 v6, 0xff

    .line 377
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 379
    :goto_5
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    :cond_9
    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 382
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v3

    if-eqz v3, :cond_b

    .line 384
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v8}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 385
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eq v6, v7, :cond_a

    iget-boolean v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v6, :cond_a

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    .line 387
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    :cond_a
    const/16 v6, 0xff

    .line 389
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 391
    :goto_6
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    :cond_b
    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    .line 397
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eq v6, v3, :cond_c

    iget-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v3, :cond_c

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    .line 399
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    :cond_c
    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 401
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    :goto_7
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    int-to-float v3, v3

    .line 404
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 407
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 411
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 413
    :goto_8
    array-length v11, v3

    if-ge v10, v11, :cond_d

    .line 415
    aget-object v11, v3, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v11, v4, v13, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 416
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 419
    :cond_d
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v8

    sub-float/2addr v10, v9

    const/4 v8, 0x0

    .line 420
    :goto_9
    array-length v9, v3

    if-ge v8, v9, :cond_e

    .line 422
    aget-object v9, v3, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v9, v4, v11, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 423
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/2addr v11, v12

    sub-int/2addr v9, v11

    int-to-float v9, v9

    .line 424
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 425
    aget-object v11, v3, v8

    iget v13, v6, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v9, v13

    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float v13, v10, v13

    invoke-virtual {v1, v11, v9, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_f
    iget-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterIn:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    .line 434
    invoke-direct {v0, v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterWedges(I)V

    goto :goto_b

    :cond_10
    iget-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterOut:Z

    if-eqz v3, :cond_11

    .line 437
    invoke-direct {v0, v12}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterWedges(I)V

    :cond_11
    :goto_b
    iget-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    :goto_c
    iget-object v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 442
    array-length v6, v5

    if-ge v3, v6, :cond_19

    .line 443
    aget-object v5, v5, v3

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    .line 444
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    .line 445
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 446
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-ne v5, v6, :cond_12

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedColor:I

    .line 449
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedAlpha:I

    .line 450
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 451
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 452
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_d

    :cond_12
    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Color:I

    .line 454
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Alpha:I

    .line 455
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 457
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_d
    iget-object v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->iconRect2:[Landroid/graphics/Rect;

    .line 460
    aget-object v5, v5, v3

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 461
    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_18

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 462
    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 465
    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 466
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    .line 468
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 469
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    int-to-float v7, v7

    .line 471
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 473
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 475
    :goto_e
    array-length v14, v6

    if-ge v10, v14, :cond_13

    .line 477
    aget-object v14, v6, v10

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v2, v14, v4, v15, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 478
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/lit8 v14, v14, 0x3

    int-to-float v14, v14

    add-float/2addr v13, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 481
    :cond_13
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 482
    iget v14, v5, Landroid/graphics/Rect;->left:I

    iget v15, v5, Landroid/graphics/Rect;->top:I

    float-to-int v13, v13

    div-int/2addr v13, v12

    sub-int/2addr v15, v13

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v13

    invoke-virtual {v10, v14, v15, v9, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 484
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    const/4 v9, 0x0

    .line 485
    :goto_f
    array-length v13, v6

    if-ge v9, v13, :cond_14

    .line 487
    aget-object v13, v6, v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v4, v14, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 488
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/2addr v14, v12

    sub-int/2addr v13, v14

    int-to-float v13, v13

    .line 489
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/lit8 v14, v14, 0x3

    int-to-float v14, v14

    add-float/2addr v8, v14

    .line 490
    aget-object v14, v6, v9

    iget v15, v7, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v13, v15

    iget v15, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float v15, v8, v15

    invoke-virtual {v1, v14, v13, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 495
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 496
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v6, 0xff

    .line 497
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 498
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_12

    :cond_15
    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 501
    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v6

    if-eqz v6, :cond_16

    .line 503
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v7}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 504
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v5, 0xff

    .line 505
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 506
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_12

    :cond_16
    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    .line 511
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 512
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 513
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    int-to-float v6, v6

    .line 514
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 517
    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 518
    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 521
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 523
    :goto_10
    array-length v10, v6

    if-ge v8, v10, :cond_17

    .line 525
    aget-object v10, v6, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v10, v4, v13, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 526
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 529
    :cond_17
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    .line 530
    :goto_11
    array-length v10, v6

    if-ge v9, v10, :cond_18

    .line 532
    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v2, v10, v4, v13, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 533
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v13, v12

    sub-int/2addr v10, v13

    int-to-float v10, v10

    .line 534
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/lit8 v13, v13, 0x3

    int-to-float v13, v13

    add-float/2addr v8, v13

    .line 535
    aget-object v13, v6, v9

    iget v14, v7, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float/2addr v10, v14

    iget v14, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float v14, v8, v14

    invoke-virtual {v1, v13, v10, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_18
    :goto_12
    add-int/lit8 v3, v3, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto/16 :goto_c

    :cond_19
    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    .line 544
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    .line 545
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 546
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v3, v3

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v5, v5

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    int-to-float v6, v6

    .line 547
    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inCircle:Z

    if-eqz v3, :cond_1a

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedColor:I

    .line 549
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedAlpha:I

    .line 550
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 551
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v3, v3

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v5, v5

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    int-to-float v6, v6

    .line 552
    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 553
    invoke-direct/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->onCloseAnimation()V

    goto :goto_13

    :cond_1a
    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultColor:I

    .line 555
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultAlpha:I

    .line 556
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 557
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v3, v3

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v5, v5

    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    int-to-float v6, v6

    .line 558
    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_13
    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 563
    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 566
    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    .line 569
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 570
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 571
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    int-to-float v5, v5

    .line 572
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 574
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 575
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 576
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v8}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 578
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v8, v9, v10}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v8

    .line 579
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v11, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v9, v10, v11}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v9

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    .line 580
    div-int/2addr v9, v12

    sub-int v11, v10, v9

    iget v13, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    div-int/2addr v8, v12

    sub-int v14, v13, v8

    add-int/2addr v10, v9

    add-int/2addr v13, v8

    invoke-virtual {v6, v11, v14, v10, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 584
    :goto_14
    array-length v10, v3

    if-ge v8, v10, :cond_1b

    .line 586
    aget-object v10, v3, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v10, v4, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 587
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/lit8 v10, v10, 0x3

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 590
    :cond_1b
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    float-to-int v9, v9

    div-int/2addr v9, v12

    sub-int/2addr v10, v9

    iget v11, v6, Landroid/graphics/Rect;->right:I

    iget v13, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v9

    invoke-virtual {v6, v8, v10, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 592
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    const/4 v9, 0x0

    .line 593
    :goto_15
    array-length v10, v3

    if-ge v9, v10, :cond_1c

    .line 595
    aget-object v10, v3, v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v10, v4, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    .line 596
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/2addr v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 597
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    add-float/2addr v8, v11

    .line 598
    aget-object v11, v3, v9

    iget v13, v5, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float/2addr v10, v13

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    invoke-virtual {v1, v11, v10, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 603
    :cond_1c
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v3, 0xff

    .line 604
    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 605
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_18

    :cond_1d
    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 608
    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 610
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 612
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getIcon()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 614
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v6, v7, v8}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v6

    .line 615
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    iget v9, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    invoke-direct {v0, v7, v8, v9}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->getIconSize(III)I

    move-result v7

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    .line 616
    div-int/2addr v7, v12

    sub-int v9, v8, v7

    iget v10, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    div-int/2addr v6, v12

    sub-int v11, v10, v6

    add-int/2addr v8, v7

    add-int/2addr v10, v6

    invoke-virtual {v3, v9, v11, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 618
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v3, 0xff

    .line 619
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 620
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_18

    :cond_1e
    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    .line 625
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    .line 626
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 627
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    int-to-float v3, v3

    .line 628
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 631
    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 635
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 637
    :goto_16
    array-length v7, v3

    if-ge v6, v7, :cond_1f

    .line 639
    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v4, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 640
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    add-float/2addr v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1f
    iget v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v9, v7

    sub-float/2addr v6, v9

    const/4 v7, 0x0

    .line 644
    :goto_17
    array-length v8, v3

    if-ge v7, v8, :cond_20

    .line 646
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v4, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v8, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    .line 647
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/2addr v9, v12

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 648
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    int-to-float v9, v9

    add-float/2addr v6, v9

    .line 649
    aget-object v9, v3, v7

    iget v10, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    invoke-virtual {v1, v9, v8, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_20
    :goto_18
    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerString:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextSize:I

    int-to-float v3, v3

    .line 658
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerString:Ljava/lang/String;

    .line 659
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->HeaderBoxBounded:Z

    if-nez v3, :cond_21

    .line 661
    invoke-direct/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineHeaderBox()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->HeaderBoxBounded:Z

    :cond_21
    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    .line 665
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    .line 666
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 667
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textBoxRect:Landroid/graphics/RectF;

    const/4 v4, 0x5

    .line 668
    invoke-direct {v0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBackgroundColor:I

    .line 669
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBackgroundAlpha:I

    .line 670
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 671
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textBoxRect:Landroid/graphics/RectF;

    .line 672
    invoke-direct {v0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v4}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextColor:I

    .line 674
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextAlpha:I

    .line 675
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 676
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextSize:I

    int-to-float v3, v3

    .line 677
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerString:Ljava/lang/String;

    iget v4, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextLeft:I

    int-to-float v4, v4

    iget v5, v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextBottom:I

    int-to-float v5, v5

    .line 678
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_22
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v13, p0

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v14, v1

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v15, v1

    const/4 v11, 0x0

    if-nez v0, :cond_4

    iput-boolean v11, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inWedge:Z

    iput-boolean v11, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inWedge2:Z

    iput-boolean v11, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inCircle:Z

    const/4 v9, 0x0

    :goto_0
    iget-object v0, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 172
    array-length v1, v0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide v18, 0x4012d97c7f3321d2L    # 4.71238898038469

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-ge v9, v1, :cond_1

    .line 173
    aget-object v10, v0, v9

    iget v0, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty:I

    int-to-double v0, v0

    div-double v22, v20, v0

    div-double v0, v22, v16

    sub-double v0, v18, v0

    int-to-double v2, v14

    int-to-double v4, v15

    iget v6, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v6, v6

    iget v7, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v7, v7

    iget v8, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    iget v11, v13, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    int-to-double v12, v9

    mul-double v12, v12, v22

    add-double/2addr v12, v0

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    move/from16 v25, v9

    move-object v11, v10

    move-wide v9, v12

    move-object v13, v11

    move-wide/from16 v11, v22

    .line 177
    invoke-direct/range {v0 .. v12}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->pntInWedge(DDFFIIDD)Z

    move-result v0

    move-object/from16 v11, p0

    iput-boolean v0, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inWedge:Z

    if-eqz v0, :cond_0

    iput-object v13, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v25, 0x1

    move-object v13, v11

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    move-object v11, v13

    :goto_1
    iget-boolean v0, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v0, :cond_3

    const/4 v13, 0x0

    :goto_2
    iget-object v0, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 191
    array-length v1, v0

    if-ge v13, v1, :cond_3

    .line 192
    aget-object v12, v0, v13

    iget v0, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedgeQty2:I

    int-to-double v0, v0

    div-double v22, v20, v0

    div-double v0, v22, v16

    sub-double v0, v18, v0

    int-to-double v2, v14

    int-to-double v4, v15

    iget v6, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-float v6, v6

    iget v7, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-float v7, v7

    iget v8, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    iget v9, v11, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    int-to-double v10, v13

    mul-double v10, v10, v22

    add-double/2addr v10, v0

    move-object/from16 v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-wide v9, v10

    move/from16 v25, v14

    move/from16 v24, v15

    move-object/from16 v15, p0

    move-object v14, v12

    move-wide/from16 v11, v22

    .line 196
    invoke-direct/range {v0 .. v12}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->pntInWedge(DDFFIIDD)Z

    move-result v0

    iput-boolean v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inWedge2:Z

    if-eqz v0, :cond_2

    iput-object v14, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    move/from16 v0, v25

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object v11, v15

    move/from16 v15, v24

    move/from16 v14, v25

    goto :goto_2

    :cond_3
    move/from16 v24, v15

    move-object v15, v11

    move v0, v14

    :goto_3
    int-to-double v1, v0

    move/from16 v0, v24

    int-to-double v3, v0

    iget v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    int-to-double v5, v0

    iget v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    int-to-double v7, v0

    iget v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    int-to-double v9, v0

    move-object/from16 v0, p0

    .line 210
    invoke-direct/range {v0 .. v10}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->pntInCircle(DDDDD)Z

    move-result v0

    iput-boolean v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inCircle:Z

    const/4 v1, 0x1

    goto/16 :goto_8

    :cond_4
    move-object v15, v13

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-boolean v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inCircle:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    if-eqz v0, :cond_5

    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-boolean v1, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterIn:Z

    :cond_5
    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iget-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 222
    invoke-interface {v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->menuActiviated()V

    goto/16 :goto_7

    :cond_6
    iget-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eqz v0, :cond_a

    const/4 v11, 0x0

    :goto_4
    iget-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 225
    array-length v3, v0

    if-ge v11, v3, :cond_c

    .line 226
    aget-object v0, v0, v11

    iget-object v3, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-ne v0, v3, :cond_9

    iget-object v3, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eqz v3, :cond_7

    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-boolean v1, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterIn:Z

    goto :goto_5

    :cond_7
    iget-object v3, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 238
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->menuActiviated()V

    iget-object v3, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 241
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->menuEntries:Ljava/util/List;

    .line 242
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-direct {v15, v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineOuterWedges(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)V

    iput-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-boolean v1, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterOut:Z

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedge2Shown:Z

    :goto_5
    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-eqz v0, :cond_c

    const/4 v11, 0x0

    :goto_6
    iget-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->Wedges2:[Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    .line 255
    array-length v3, v0

    if-ge v11, v3, :cond_c

    .line 256
    aget-object v0, v0, v11

    iget-object v3, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    if-ne v0, v3, :cond_b

    iput-boolean v1, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateOuterIn:Z

    iget-object v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Data:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    .line 260
    invoke-interface {v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    invoke-interface {v0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;->menuActiviated()V

    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->enabled:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    iput-object v2, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selected2:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;

    const/4 v0, 0x0

    iput-boolean v0, v15, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->inCircle:Z

    .line 274
    :cond_d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->invalidate()V

    return v1
.end method

.method public setAnimationSpeed(J)V
    .locals 0

    iput-wide p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animationSpeed:J

    .line 844
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->onOpenAnimation()V

    return-void
.end method

.method public setCenterCircle(Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;)Z
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->centerCircle:Ldev/ukanth/ufirewall/widget/RadialMenuWidget$RadialMenuEntry;

    const/4 p1, 0x1

    return p1
.end method

.method public setCenterCircleRadius(I)V
    .locals 0

    .line 802
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->cRadius:I

    .line 803
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    return-void
.end method

.method public setCenterLocation(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xPosition:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->yPosition:I

    .line 824
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    .line 825
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->onOpenAnimation()V

    return-void
.end method

.method public setDisabledColor(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledColor:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->disabledAlpha:I

    return-void
.end method

.method public setHeader(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerString:Ljava/lang/String;

    .line 883
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextSize:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->HeaderBoxBounded:Z

    return-void
.end method

.method public setHeaderColors(IIII)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextColor:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerTextAlpha:I

    iput p3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBackgroundColor:I

    iput p4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->headerBackgroundAlpha:I

    return-void
.end method

.method public setIconSize(II)V
    .locals 0

    .line 814
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinIconSize:I

    .line 815
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxIconSize:I

    .line 816
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    return-void
.end method

.method public setInnerRingColor(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultColor:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->defaultAlpha:I

    return-void
.end method

.method public setInnerRingRadius(II)V
    .locals 0

    .line 788
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MinSize:I

    .line 789
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->MaxSize:I

    .line 790
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    return-void
.end method

.method public setOuterRingColor(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Color:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->wedge2Alpha:I

    return-void
.end method

.method public setOuterRingRadius(II)V
    .locals 0

    .line 795
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MinSize:I

    .line 796
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->r2MaxSize:I

    .line 797
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->determineWedges()V

    return-void
.end method

.method public setOutlineColor(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineColor:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->outlineAlpha:I

    return-void
.end method

.method public setSelectedColor(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedColor:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->selectedAlpha:I

    return-void
.end method

.method public setShowSourceLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->showSource:Z

    .line 838
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->onOpenAnimation()V

    return-void
.end method

.method public setSourceLocation(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->xSource:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->ySource:I

    .line 832
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->onOpenAnimation()V

    return-void
.end method

.method public setTextColor(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textColor:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textAlpha:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->scalePX(I)I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->textSize:I

    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget;->animateTextSize:I

    return-void
.end method
