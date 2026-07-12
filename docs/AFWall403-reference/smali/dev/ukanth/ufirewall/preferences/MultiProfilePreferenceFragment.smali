.class public Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "MultiProfilePreferenceFragment.java"


# direct methods
.method public static synthetic $r8$lambda$uscR4iw0D-92KkKbjEhSkZ-IUEU(Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->lambda$onCreate$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z_GOb8aLe-7fnxi4WiH-m-1FrLc(Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->lambda$onCreate$1(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/preference/Preference;)Z
    .locals 2

    .line 31
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/activity/ProfileActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreate$1(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p4

    .line 41
    invoke-static {p4}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->migrateProfiles(Landroid/content/Context;)V

    if-eqz p4, :cond_0

    .line 43
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->profile_migrate_msg:I

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "profile1"

    .line 46
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 47
    invoke-virtual {p3, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "profile2"

    .line 49
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "profile3"

    .line 52
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 53
    invoke-virtual {p3, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v2, 0x0

    .line 76
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 77
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 78
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget p1, Ldev/ukanth/ufirewall/R$xml;->profiles_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "manage_profiles"

    .line 28
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 29
    new-instance v0, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "promigrate"

    .line 35
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    const-string v0, "oldprofile_pref"

    .line 36
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "migrate_profile"

    .line 37
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 38
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1, v0}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "profile1"

    .line 60
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "profile2"

    .line 63
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "profile3"

    .line 66
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method
