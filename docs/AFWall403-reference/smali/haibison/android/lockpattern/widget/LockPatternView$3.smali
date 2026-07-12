.class Lhaibison/android/lockpattern/widget/LockPatternView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockPatternView.java"


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

.field final synthetic val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$3;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$3;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 726
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$3;->val$state:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    const/4 v0, 0x0

    .line 730
    iput-object v0, p1, Lhaibison/android/lockpattern/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
