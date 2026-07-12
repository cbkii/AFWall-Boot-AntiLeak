.class Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$2;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "RulesPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->updateRuleStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;

    .line 75
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 8

    .line 78
    iget v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-nez v0, :cond_6

    .line 79
    iget-object p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-P INPUT (\\w+)"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "-P OUTPUT (\\w+)"

    .line 87
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "-P FORWARD (\\w+)"

    .line 88
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 90
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 92
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "ACCEPT"

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ldev/ukanth/ufirewall/util/G;->ipv4Input(Z)Z

    const/4 v4, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ldev/ukanth/ufirewall/util/G;->ipv6Input(Z)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 102
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->ipv4Output(Z)Z

    const/4 v1, 0x0

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ldev/ukanth/ufirewall/util/G;->ipv6Output(Z)Z

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x1

    .line 112
    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->ipv4Fwd(Z)Z

    const/4 v0, 0x0

    goto :goto_2

    .line 117
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->ipv6Fwd(Z)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;

    .line 121
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$2;->this$0:Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;

    .line 122
    sget v0, Ldev/ukanth/ufirewall/R$xml;->rules_preferences:I

    invoke-virtual {p1, v0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->addPreferencesFromResource(I)V

    :cond_6
    return-void
.end method
