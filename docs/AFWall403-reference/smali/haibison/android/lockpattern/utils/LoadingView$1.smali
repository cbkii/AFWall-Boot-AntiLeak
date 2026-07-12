.class Lhaibison/android/lockpattern/utils/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhaibison/android/lockpattern/utils/LoadingView;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhaibison/android/lockpattern/utils/LoadingView;


# direct methods
.method constructor <init>(Lhaibison/android/lockpattern/utils/LoadingView;)V
    .locals 0

    iput-object p1, p0, Lhaibison/android/lockpattern/utils/LoadingView$1;->this$0:Lhaibison/android/lockpattern/utils/LoadingView;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/LoadingView$1;->this$0:Lhaibison/android/lockpattern/utils/LoadingView;

    .line 71
    invoke-static {v0}, Lhaibison/android/lockpattern/utils/LoadingView;->access$000(Lhaibison/android/lockpattern/utils/LoadingView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhaibison/android/lockpattern/utils/LoadingView$1;->this$0:Lhaibison/android/lockpattern/utils/LoadingView;

    invoke-static {v0}, Lhaibison/android/lockpattern/utils/LoadingView;->access$100(Lhaibison/android/lockpattern/utils/LoadingView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
