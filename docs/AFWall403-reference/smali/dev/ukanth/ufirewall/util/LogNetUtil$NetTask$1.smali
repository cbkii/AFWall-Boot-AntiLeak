.class Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;
.super Ljava/lang/Object;
.source "LogNetUtil.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;->this$0:Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;->this$0:Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    .line 154
    iget-object p1, p1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;->this$0:Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    iget-object p2, p2, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->output_result:Ljava/lang/String;

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;->this$0:Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    .line 155
    iget-object p1, p1, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask$1;->this$0:Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;

    iget-object p2, p2, Ldev/ukanth/ufirewall/util/LogNetUtil$NetTask;->context:Landroid/content/Context;

    sget v0, Ldev/ukanth/ufirewall/R$string;->result_copied_to_clipboard:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
