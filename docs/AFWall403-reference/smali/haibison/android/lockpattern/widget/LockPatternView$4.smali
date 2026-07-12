.class Lhaibison/android/lockpattern/widget/LockPatternView$4;
.super Lhaibison/android/lockpattern/utils/FloatAnimator$SimpleEventListener;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;->startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$4;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$4;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    iput-object p3, p0, Lhaibison/android/lockpattern/widget/LockPatternView$4;->val$endRunnable:Ljava/lang/Runnable;

    .line 745
    invoke-direct {p0}, Lhaibison/android/lockpattern/utils/FloatAnimator$SimpleEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lhaibison/android/lockpattern/utils/FloatAnimator;)V
    .locals 0

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$4;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 756
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Lhaibison/android/lockpattern/utils/FloatAnimator;)V
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$4;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 749
    invoke-virtual {p1}, Lhaibison/android/lockpattern/utils/FloatAnimator;->getAnimatedValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->size:F

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$4;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 750
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    return-void
.end method
