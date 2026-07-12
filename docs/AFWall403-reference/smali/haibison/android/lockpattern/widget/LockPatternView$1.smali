.class Lhaibison/android/lockpattern/widget/LockPatternView$1;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/widget/LockPatternView;->startCellActivatedAnimation(Lhaibison/android/lockpattern/widget/LockPatternView$Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

.field final synthetic val$cellState:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/widget/LockPatternView;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/widget/LockPatternView$1;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    iput-object p2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$1;->val$cellState:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lhaibison/android/lockpattern/widget/LockPatternView$1;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 696
    invoke-static {v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->access$100(Lhaibison/android/lockpattern/widget/LockPatternView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lhaibison/android/lockpattern/widget/LockPatternView$1;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    invoke-static {v2}, Lhaibison/android/lockpattern/widget/LockPatternView;->access$200(Lhaibison/android/lockpattern/widget/LockPatternView;)I

    move-result v2

    int-to-float v2, v2

    const-wide/16 v3, 0xc0

    iget-object v5, p0, Lhaibison/android/lockpattern/widget/LockPatternView$1;->this$0:Lhaibison/android/lockpattern/widget/LockPatternView;

    .line 697
    invoke-static {v5}, Lhaibison/android/lockpattern/widget/LockPatternView;->access$300(Lhaibison/android/lockpattern/widget/LockPatternView;)Landroid/view/animation/Interpolator;

    move-result-object v5

    iget-object v6, p0, Lhaibison/android/lockpattern/widget/LockPatternView$1;->val$cellState:Lhaibison/android/lockpattern/widget/LockPatternView$CellState;

    const/4 v7, 0x0

    .line 696
    invoke-static/range {v0 .. v7}, Lhaibison/android/lockpattern/widget/LockPatternView;->access$400(Lhaibison/android/lockpattern/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lhaibison/android/lockpattern/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method
