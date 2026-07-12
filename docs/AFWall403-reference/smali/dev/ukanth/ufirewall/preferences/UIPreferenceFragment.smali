.class public Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "UIPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$0ikhnNfGADoSdYH5a74sfo6hcPw(Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/preference/Preference;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->lambda$populatePreference$1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static convertIntegers(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic lambda$populatePreference$0(Ljava/util/ArrayList;ILcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 5

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 111
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_2
    invoke-static {p2, v0, p1}, Ldev/ukanth/ufirewall/util/G;->storeDefaultConnection(Ljava/util/List;Ljava/util/List;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$populatePreference$1(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/preference/Preference;)Z
    .locals 1

    .line 98
    new-instance p5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p5, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p5, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 100
    invoke-static {p2}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->convertIntegers(Ljava/util/List;)[I

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsIds([I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(Ljava/util/Collection;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p3, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p4}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;I)V

    const/4 p5, 0x0

    .line 102
    invoke-virtual {p1, p5, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget p3, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 118
    invoke-virtual {p1, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget p3, Ldev/ukanth/ufirewall/R$string;->close:I

    .line 119
    invoke-virtual {p1, p3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    .line 122
    invoke-static {p4}, Ldev/ukanth/ufirewall/util/G;->readDefaultConnection(I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 123
    invoke-direct {p0, p2, p4}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->selectItems(Ljava/util/ArrayList;I)[Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setSelectedIndices([Ljava/lang/Integer;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private populatePreference(Landroid/preference/Preference;Ljava/lang/String;I)V
    .locals 7

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget v0, Ldev/ukanth/ufirewall/R$string;->lan:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget v0, Ldev/ukanth/ufirewall/R$string;->wifi:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget v0, Ldev/ukanth/ufirewall/R$string;->data:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget v0, Ldev/ukanth/ufirewall/R$string;->roaming:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget v0, Ldev/ukanth/ufirewall/R$string;->tor:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget v0, Ldev/ukanth/ufirewall/R$string;->vpn:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget v0, Ldev/ukanth/ufirewall/R$string;->tether:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x6

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v6, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private selectItems(Ljava/util/ArrayList;I)[Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-static {p2}, Ldev/ukanth/ufirewall/util/G;->readDefaultConnection(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 142
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Integer;

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget p1, Ldev/ukanth/ufirewall/R$xml;->ui_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->addPreferencesFromResource(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "default_behavior_allow_mode"

    .line 32
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->connection_default_allow:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->populatePreference(Landroid/preference/Preference;Ljava/lang/String;I)V

    const-string p1, "default_behavior_block_mode"

    .line 33
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->connection_default_allow:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->populatePreference(Landroid/preference/Preference;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 47
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p1, "notification_priority"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    const-string p2, "notification"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;->ctx:Landroid/content/Context;

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    :cond_1
    return-void
.end method
