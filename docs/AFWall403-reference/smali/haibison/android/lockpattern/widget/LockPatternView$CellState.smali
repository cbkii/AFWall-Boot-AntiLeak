.class public Lhaibison/android/lockpattern/widget/LockPatternView$CellState;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field public alpha:F

.field public lineAnimator:Landroid/animation/ValueAnimator;

.field public lineEndX:F

.field public lineEndY:F

.field public scale:F

.field public size:F

.field public translateY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->scale:F

    const/4 v1, 0x0

    iput v1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->translateY:F

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->alpha:F

    const/4 v0, 0x1

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndX:F

    iput v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndY:F

    return-void
.end method
