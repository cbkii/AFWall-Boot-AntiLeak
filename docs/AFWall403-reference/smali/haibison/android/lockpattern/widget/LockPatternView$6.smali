.class Lhaibison/android/lockpattern/widget/LockPatternView$6;
.super Landroid/animation/AnimatorListenerAdapter;
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


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/widget/LockPatternView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$6;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$6;->val$endRunnable:Ljava/lang/Runnable;

    .line 775
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$6;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 780
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
