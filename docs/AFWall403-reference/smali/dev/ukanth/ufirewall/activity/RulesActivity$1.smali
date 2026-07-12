.class Ldev/ukanth/ufirewall/activity/RulesActivity$1;
.super Landroid/os/AsyncTask;
.source "RulesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/RulesActivity;->appendSystemInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->val$ctx:Landroid/content/Context;

    .line 200
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 200
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    const-string v1, "/system/bin/su"

    .line 205
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    const-string v1, "/system/xbin/su"

    .line 206
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    const-string v1, "/data/magisk/magisk"

    .line 207
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    const-string v1, "/data/adb/magisk"

    .line 208
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    const-string v1, "/system/app/Superuser.apk"

    .line 209
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getFileInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->val$ctx:Landroid/content/Context;

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Superuser: "

    .line 212
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getSuInfo(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 200
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 220
    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    .line 221
    sget v0, Ldev/ukanth/ufirewall/R$string;->finalizing:I

    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->-$$Nest$mupdateLoadingState(Ldev/ukanth/ufirewall/activity/RulesActivity;Ljava/lang/String;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/RulesActivity;

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->val$ctx:Landroid/content/Context;

    .line 222
    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->appendPreferences(Landroid/content/Context;)V

    return-void
.end method
