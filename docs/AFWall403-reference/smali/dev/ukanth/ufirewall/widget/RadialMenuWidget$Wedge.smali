.class public Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;
.super Landroid/graphics/Path;
.source "RadialMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/widget/RadialMenuWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wedge"
.end annotation


# instance fields
.field private final ArcWidth:F

.field private final InnerSize:I

.field private final OuterSize:I

.field private final StartArc:F

.field private final x:I

.field private final y:I


# direct methods
.method private constructor <init>(IIIIFF)V
    .locals 2

    .line 1154
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p5, v0

    if-ltz v1, :cond_0

    sub-float/2addr p5, v0

    :cond_0
    iput p1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->x:I

    iput p2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->y:I

    iput p3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->InnerSize:I

    iput p4, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->OuterSize:I

    iput p5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->StartArc:F

    iput p6, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->ArcWidth:F

    .line 1165
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->buildPath()V

    return-void
.end method

.method synthetic constructor <init>(IIIIFFLdev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;-><init>(IIIIFF)V

    return-void
.end method

.method private buildPath()V
    .locals 7

    .line 1170
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1171
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->x:I

    iget v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->InnerSize:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    iget v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->y:I

    sub-int v6, v5, v3

    int-to-float v6, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v5, v3

    int-to-float v3, v5

    .line 1174
    invoke-virtual {v0, v4, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->x:I

    iget v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->OuterSize:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    iget v5, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->y:I

    sub-int v6, v5, v3

    int-to-float v6, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v5, v3

    int-to-float v3, v5

    .line 1175
    invoke-virtual {v1, v4, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1177
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->reset()V

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->StartArc:F

    iget v3, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->ArcWidth:F

    .line 1179
    invoke-virtual {p0, v1, v2, v3}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->arcTo(Landroid/graphics/RectF;FF)V

    iget v1, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->StartArc:F

    iget v2, p0, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->ArcWidth:F

    add-float/2addr v1, v2

    neg-float v2, v2

    .line 1180
    invoke-virtual {p0, v0, v1, v2}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->arcTo(Landroid/graphics/RectF;FF)V

    .line 1182
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/RadialMenuWidget$Wedge;->close()V

    return-void
.end method
