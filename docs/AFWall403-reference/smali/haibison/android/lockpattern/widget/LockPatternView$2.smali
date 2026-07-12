.class Lhaibison/android/lockpattern/widget/LockPatternView$2;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;->startLineEndAnimation(Lhaibison/android/lockpattern/widget/LockPatternView$CellState;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

.field final synthetic val$startX:F

.field final synthetic val$startY:F

.field final synthetic val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

.field final synthetic val$targetX:F

.field final synthetic val$targetY:F


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;FFFF)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    iput p3, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$startX:F

    iput p4, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$targetX:F

    iput p5, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$startY:F

    iput p6, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$targetY:F

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 719
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$startX:F

    mul-float v2, v2, v1

    iget v3, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$targetX:F

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 720
    iput v2, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndX:F

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    iget v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$startY:F

    mul-float v1, v1, v2

    iget v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->val$targetY:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 721
    iput v1, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineEndY:F

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$2;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 722
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    return-void
.end method
