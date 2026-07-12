.class Ldev/ukanth/ufirewall/MainActivity$8;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->startRootShell()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$In6984fLNRL1iWkFglIb5lfgnH4(Ldev/ukanth/ufirewall/MainActivity$8;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity$8;->lambda$cbFunc$0()V

    return-void
.end method

.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$8;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 607
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method

.method private synthetic lambda$cbFunc$0()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$8;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 612
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mdisableFirewall(Ldev/ukanth/ufirewall/MainActivity;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$8;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 613
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mshowRootNotFoundMessage(Ldev/ukanth/ufirewall/MainActivity;)V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 610
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$8;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 611
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$8$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/MainActivity$8;)V

    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
