.class Lhaibison/android/lockpattern/LockPatternActivity$7;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/LockPatternActivity;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/LockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/LockPatternActivity$7;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$7;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1182
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$600(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lhaibison/android/lockpattern/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lhaibison/android/lockpattern/LockPatternActivity$7;->this$0:Lhaibison/android/lockpattern/LockPatternActivity;

    .line 1183
    invoke-static {v0}, Lhaibison/android/lockpattern/LockPatternActivity;->access$1500(Lhaibison/android/lockpattern/LockPatternActivity;)Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;

    move-result-object v0

    invoke-interface {v0}, Lhaibison/android/lockpattern/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    return-void
.end method
