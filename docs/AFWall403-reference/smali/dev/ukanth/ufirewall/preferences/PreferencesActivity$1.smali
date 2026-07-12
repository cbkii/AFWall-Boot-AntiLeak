.class Ldev/ukanth/ufirewall/preferences/PreferencesActivity$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->ruleChangeApplyRules(Ldev/ukanth/ufirewall/events/RulesEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/PreferencesActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/PreferencesActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$1;->this$0:Ldev/ukanth/ufirewall/preferences/PreferencesActivity;

    .line 149
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 1

    .line 152
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    const-string v0, "AFWall"

    if-nez p1, :cond_0

    const-string p1, "Rules applied successfully during preference change"

    .line 153
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Error applying rules during preference change"

    .line 156
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
