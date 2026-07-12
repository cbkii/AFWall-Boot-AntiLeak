.class Lhaibison/android/lockpattern/widget/LockPatternView$5;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$5;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$5;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$5;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 769
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->size:F

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$5;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 770
    invoke-virtual {p1}, Lhaibison/android/lockpattern/widget/LockPatternView;->invalidate()V

    return-void
.end method
