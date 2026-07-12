.class public Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ExpPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final initDirs:[Ljava/lang/String;

.field private final initScript:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$99Vxi-7252E1NkAqTeBLYZsJocc(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$deleteFiles$10(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ASu8W_B0VI6oKkWxPEFwCL7ffJQ(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/app/Activity;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$updateLeakCheckbox$8(Landroid/app/Activity;Landroid/preference/CheckBoxPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DamXAWticwSHSjg3vp1bizPdXnc(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;ZLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$onSharedPreferenceChanged$4(ZLandroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uk9N8z5NclgYhZhO4PGsGXcgElg(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$setupInitDir$0(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZU17KF6ljxTiO_e8l9IKpGbihG0(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$deleteFiles$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$kCAcTzu6StPhZMQoaJn-qR_rKfg(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$onSharedPreferenceChanged$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lEB_nlAdTFbcWSPvKsR2TIRqFi8(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;ZLandroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$updateFixLeakScript$6(ZLandroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPnnJx_nYtHvf58S3z2kU2dvNho(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$updateFixLeakScript$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$spRy1W8Fy2CYMFGtGL2Yv-N5YDc(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/app/Activity;Landroid/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->lambda$setupInitDir$2(Landroid/app/Activity;Landroid/preference/ListPreference;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, "/magisk/.core/service.d/"

    const-string v1, "/sbin/.core/img/.core/service.d/"

    const-string v2, "/sbin/.magisk/img/.core/service.d/"

    const-string v3, "/magisk/phh/su.d/"

    const-string v4, "/data/adb/post-fs-data.d/"

    const-string v5, "/data/adb/service.d/"

    const-string v6, "/sbin/.core/img/phh/su.d/"

    const-string v7, "/su/su.d/"

    const-string v8, "/system/su.d/"

    const-string v9, "/system/etc/init.d/"

    const-string v10, "/etc/init.d/"

    const-string v11, "/sbin/supersu/su.d"

    const-string v12, "/data/adb/su/su.d"

    .line 34
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->initDirs:[Ljava/lang/String;

    const-string v0, "afwallstart"

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->initScript:Ljava/lang/String;

    return-void
.end method

.method private deleteFiles(Landroid/content/Context;Z)V
    .locals 3

    .line 233
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda10;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 254
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 256
    :cond_0
    sget p2, Ldev/ukanth/ufirewall/R$string;->delete_initd_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isFixLeakInstalled()Z
    .locals 1

    const-string v0, "afwallstart"

    .line 186
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {v0}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x1

    .line 171
    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$deleteFiles$10(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 236
    invoke-static {p1, v0}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/afwallstart"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "afwallstart"

    .line 238
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RW"

    invoke-static {p2, v1, v2}, Ldev/ukanth/ufirewall/Api;->mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm -f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object p1

    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 242
    sget p1, Ldev/ukanth/ufirewall/R$string;->remove_initd:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->delete_initd_error:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_1

    .line 247
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    :cond_1
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "RO"

    invoke-static {p2, p1, p3}, Ldev/ukanth/ufirewall/Api;->mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 251
    :cond_2
    sget p1, Ldev/ukanth/ufirewall/R$string;->mount_initd_error:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$deleteFiles$9()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->updateLeakCheckbox()V

    return-void
.end method

.method private synthetic lambda$onSharedPreferenceChanged$3(Z)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->updateFixLeakScript(Z)V

    return-void
.end method

.method private synthetic lambda$onSharedPreferenceChanged$4(ZLandroid/app/Activity;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->isFixLeakInstalled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 133
    new-instance v0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda7;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupInitDir$0(Landroid/content/Context;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 69
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->fixLeak()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 72
    invoke-direct {p0, p1, p3}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->deleteFiles(Landroid/content/Context;Z)V

    .line 73
    invoke-static {p2}, Ldev/ukanth/ufirewall/util/G;->initPath(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->updateFixLeakScript(Z)V

    :cond_0
    return v0
.end method

.method static synthetic lambda$setupInitDir$1(Landroid/preference/ListPreference;[Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setupInitDir$2(Landroid/app/Activity;Landroid/preference/ListPreference;)V
    .locals 7

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->initDirs:[Ljava/lang/String;

    .line 84
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const/4 v6, 0x1

    .line 86
    invoke-static {v5, v6}, Lcom/stericson/roottools/RootTools;->exists(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-array v1, v3, [Ljava/lang/String;

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 93
    new-instance v1, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2, v0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda2;-><init>(Landroid/preference/ListPreference;[Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateFixLeakScript$5()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->updateLeakCheckbox()V

    return-void
.end method

.method private synthetic lambda$updateFixLeakScript$6(ZLandroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    .line 197
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 200
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "afwallstart"

    .line 201
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RW"

    invoke-static {p2, v2, v3}, Ldev/ukanth/ufirewall/Api;->mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 755 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v2

    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/afwallstart"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p3, p1, v1, v2}, Lcom/stericson/roottools/RootTools;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 207
    sget p1, Ldev/ukanth/ufirewall/R$string;->success_initd:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "RO"

    invoke-static {p2, p1, p3}, Ldev/ukanth/ufirewall/Api;->mountDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    new-instance p1, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda9;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;)V

    invoke-virtual {p4, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 212
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->mount_initd_error:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/Api;->sendToastBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0, p2, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->deleteFiles(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$updateLeakCheckbox$7(Landroid/preference/CheckBoxPreference;Z)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$updateLeakCheckbox$8(Landroid/app/Activity;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    .line 226
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->isFixLeakInstalled()Z

    move-result v0

    .line 227
    new-instance v1, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, v0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda6;-><init>(Landroid/preference/CheckBoxPreference;Z)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupInitDir(Landroid/preference/Preference;)V
    .locals 3

    .line 66
    check-cast p1, Landroid/preference/ListPreference;

    .line 67
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    new-instance v1, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/app/Activity;Landroid/preference/ListPreference;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 100
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixLeak"

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 106
    :goto_0
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->setupFixLeak(Landroid/preference/Preference;Landroid/content/Context;)V

    return-void
.end method

.method private updateFixLeakScript(Z)V
    .locals 8

    .line 191
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 192
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "bin"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "afwallstart"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 196
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda8;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda8;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;ZLandroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private updateLeakCheckbox()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fixLeak"

    .line 224
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 225
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;Landroid/app/Activity;Landroid/preference/CheckBoxPreference;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Ldev/ukanth/ufirewall/R$xml;->experimental_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "initPath"

    .line 57
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->setupInitDir(Landroid/preference/Preference;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 112
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    const-string p1, "fixLeak"

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->fixLeak()Z

    move-result v0

    .line 130
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;ZLandroid/app/Activity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string v0, "initPath"

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->initPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    const-string p1, "multiUser"

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->supportsMultipleUsers(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 147
    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    const/4 p2, 0x0

    .line 148
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->setUserOwner(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setupFixLeak(Landroid/preference/Preference;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .line 161
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->updateLeakCheckbox()V

    const-string v0, "afwallstart"

    .line 164
    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getFixLeakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.androguide.universal.init.d"

    invoke-direct {p0, v0, p2}, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method
