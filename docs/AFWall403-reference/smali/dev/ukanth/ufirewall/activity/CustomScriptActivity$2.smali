.class Ldev/ukanth/ufirewall/activity/CustomScriptActivity$2;
.super Ljava/lang/Object;
.source "CustomScriptActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/CustomScriptActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/activity/CustomScriptActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity$2;->this$0:Ldev/ukanth/ufirewall/activity/CustomScriptActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/CustomScriptActivity$2;->this$0:Ldev/ukanth/ufirewall/activity/CustomScriptActivity;

    .line 151
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;->-$$Nest$mresultOk(Ldev/ukanth/ufirewall/activity/CustomScriptActivity;)V

    return-void
.end method
