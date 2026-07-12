.class Ldev/ukanth/ufirewall/MainActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->registerThemeIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$2;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 318
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$2;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 321
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$minitTheme(Ldev/ukanth/ufirewall/MainActivity;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$2;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 322
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->recreate()V

    return-void
.end method
