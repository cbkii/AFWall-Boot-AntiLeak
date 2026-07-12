.class public Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "LogPreferenceFragment.java"


# direct methods
.method public static synthetic $r8$lambda$A7CqdVjyTmsy3jDJEG8oWk0vQvo(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->lambda$changeLogTargetInService$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyLogTargetChange(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->applyLogTargetChange(Ljava/lang/String;Landroid/preference/ListPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowLogTargetChangeDialog(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->showLogTargetChangeDialog(Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private applyLogTargetChange(Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 2

    .line 213
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 216
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->logTarget(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 222
    new-instance p2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    sget v1, Ldev/ukanth/ufirewall/R$string;->log_target_success:I

    .line 224
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    sget v1, Ldev/ukanth/ufirewall/R$string;->log_target_fail:I

    .line 225
    invoke-virtual {p2, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    .line 222
    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/Api;->updateLogRules(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    .line 228
    invoke-direct {p0, v0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->changeLogTargetInService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private changeLogTargetInService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing log target to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogPreferenceFragment"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dev.ukanth.ufirewall.CHANGE_LOG_TARGET"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "new_log_target"

    .line 241
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    new-instance v1, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "Log service disabled, only updating preference"

    .line 251
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget v0, Ldev/ukanth/ufirewall/R$string;->log_target_changed_success:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$changeLogTargetInService$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 247
    sget v0, Ldev/ukanth/ufirewall/R$string;->log_target_changed_success:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v2}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private populateLogTarget(Landroid/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    check-cast p1, Landroid/preference/ListPreference;

    .line 50
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTargets()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logExperimental"

    if-eqz v0, :cond_3

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTargets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 51
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTargets()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    array-length v2, v0

    if-lez v2, :cond_2

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 58
    new-instance v1, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$1;-><init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Landroid/preference/ListPreference;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    :cond_1
    array-length p1, v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 77
    aget-object p1, v0, p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->logTarget(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private setupLogHostname(Landroid/preference/Preference;)V
    .locals 1

    .line 90
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 91
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private showLogTargetChangeDialog(Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 4

    .line 190
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->log_target_change_title:I

    .line 191
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->log_target_change_message:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 192
    invoke-virtual {p0, v1, v2}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->Yes:I

    .line 193
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 194
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;

    invoke-direct {v0, p0, p2, p3}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$3;-><init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;Ljava/lang/String;Landroid/preference/ListPreference;)V

    .line 195
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p2, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$2;

    invoke-direct {p2, p0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment$2;-><init>(Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;)V

    .line 202
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    :try_start_0
    sget p1, Ldev/ukanth/ufirewall/R$xml;->log_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "showHostName"

    .line 37
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->setupLogHostname(Landroid/preference/Preference;)V

    const-string p1, "logTarget"

    .line 38
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->populateLogTarget(Landroid/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AFWall"

    .line 40
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->exception_pref:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
