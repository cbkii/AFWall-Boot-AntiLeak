.class public Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "RulesPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private updateRuleStatus()V
    .locals 4

    const-string v0, "input_chain"

    .line 51
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 52
    new-instance v1, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$1;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "input_chain_v6"

    .line 61
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    const-string v1, "output_chain_v6"

    .line 62
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    const-string v2, "forward_chain_v6"

    .line 63
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 66
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 67
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 69
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 72
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 73
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$2;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$2;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 75
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->getChainStatus(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Ldev/ukanth/ufirewall/R$xml;->rules_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->addPreferencesFromResource(I)V

    .line 35
    :try_start_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->updateRuleStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 40
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "enableRoam"

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 152
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 145
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    const-string p1, "activeRules"

    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->activeRules()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "enableRoam"

    .line 165
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 166
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string p1, "enableLAN"

    .line 167
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 168
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string p1, "enableVPN"

    .line 169
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 170
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string p1, "enableTether"

    .line 171
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 172
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string p1, "enableTor"

    .line 173
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 174
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableRoam(Z)Z

    .line 177
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableLAN(Z)Z

    .line 178
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableVPN(Z)Z

    .line 179
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableTether(Z)Z

    .line 180
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableTor(Z)Z

    .line 186
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "forward_chain_v6"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string p1, "output_chain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string p1, "input_chain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string p1, "forward_chain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string p1, "output_chain_v6"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string p1, "input_chain_v6"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    const-string p1, "-P FORWARD "

    const-string v3, "-P OUTPUT "

    const-string v4, "-P INPUT "

    const-string v5, "ACCEPT"

    const-string v6, "DROP"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 258
    :pswitch_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Fwd()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v6

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 259
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 260
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v4, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$8;

    invoke-direct {v4, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$8;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 261
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 259
    invoke-static {v2, p1, v1, v3}, Ldev/ukanth/ufirewall/Api;->applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto/16 :goto_7

    .line 202
    :pswitch_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Output()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move-object v5, v6

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 203
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 204
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$4;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$4;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 205
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 203
    invoke-static {v1, p1, v0, v2}, Ldev/ukanth/ufirewall/Api;->applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto/16 :goto_7

    .line 188
    :pswitch_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Input()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move-object v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 189
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 190
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$3;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$3;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 191
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 189
    invoke-static {v1, p1, v0, v2}, Ldev/ukanth/ufirewall/Api;->applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto/16 :goto_7

    .line 216
    :pswitch_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv4Fwd()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v5, v6

    :goto_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 217
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 218
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$5;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$5;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 219
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 217
    invoke-static {v1, p1, v0, v2}, Ldev/ukanth/ufirewall/Api;->applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_7

    .line 244
    :pswitch_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Output()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move-object v5, v6

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 245
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 246
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v4, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$7;

    invoke-direct {v4, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$7;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 247
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 245
    invoke-static {v2, p1, v1, v3}, Ldev/ukanth/ufirewall/Api;->applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_7

    .line 230
    :pswitch_5
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ipv6Input()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move-object v5, v6

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->ctx:Landroid/content/Context;

    .line 231
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 232
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v4, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$6;

    invoke-direct {v4, p0}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment$6;-><init>(Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;)V

    .line 233
    invoke-virtual {v3, v4}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 231
    invoke-static {v2, p1, v1, v3}, Ldev/ukanth/ufirewall/Api;->applyRule(Landroid/content/Context;Ljava/lang/String;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :goto_7
    const-string p1, "enableIPv6"

    .line 273
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "controlIPv6"

    if-eqz v1, :cond_10

    .line 276
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/bin/ip6tables"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 278
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->enableIPv6(Z)Z

    .line 279
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 280
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_8

    .line 288
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_8

    .line 290
    :cond_e
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 291
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_8

    .line 294
    :cond_f
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 295
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    :cond_10
    :goto_8
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 302
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 303
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_11
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69b36a6d -> :sswitch_5
        -0x4618bdc4 -> :sswitch_4
        -0x3e61b39 -> :sswitch_3
        0x149120c -> :sswitch_2
        0xbc0ce03 -> :sswitch_1
        0x494784f8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
