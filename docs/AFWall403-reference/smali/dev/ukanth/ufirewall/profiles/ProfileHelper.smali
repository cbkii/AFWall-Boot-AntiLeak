.class public Ldev/ukanth/ufirewall/profiles/ProfileHelper;
.super Ljava/lang/Object;
.source "ProfileHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AFWall"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteProfile(Ljava/lang/String;)Z
    .locals 0

    .line 77
    invoke-static {p0}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByIdentifier(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->delete()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static deleteProfileByName(Ljava/lang/String;)Z
    .locals 0

    .line 84
    invoke-static {p0}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->delete()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getProfileByIdentifier(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 63
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 64
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v3, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->identifier:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-virtual {v3, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    return-object p0
.end method

.method public static getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 57
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 58
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v3, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-virtual {v3, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    return-object p0
.end method

.method public static getProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/profiles/ProfileData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 50
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    const-class v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 51
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/From;->queryList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static migrateProfiles(Landroid/content/Context;)V
    .locals 10

    .line 92
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_6

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getDefaultProfiles()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    .line 97
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 98
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eq v5, v4, :cond_1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    const-string v7, ""

    goto :goto_1

    .line 108
    :cond_0
    sget-object v7, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v8, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "profile3"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 105
    :cond_1
    sget-object v7, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v8, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "profile2"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 102
    :cond_2
    sget-object v7, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v8, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "profile1"

    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    :goto_1
    new-instance v8, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-direct {v8}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>()V

    .line 112
    invoke-virtual {v8, v7}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v8, v6}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setIdentifier(Ljava/lang/String;)V

    .line 114
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    new-instance v5, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-direct {v5}, Ldev/ukanth/ufirewall/profiles/ProfileData;-><init>()V

    .line 118
    invoke-virtual {v5, v2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v5, v2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setIdentifier(Ljava/lang/String;)V

    .line 120
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 125
    :cond_4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    const/4 v2, 0x0

    .line 126
    invoke-static {v1, p0, v2}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->storeProfile(Ldev/ukanth/ufirewall/profiles/ProfileData;Landroid/content/Context;Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    goto :goto_3

    .line 129
    :cond_5
    invoke-static {v4}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 131
    :catch_0
    invoke-static {v3}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated(Z)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public static storeProfile(Ldev/ukanth/ufirewall/profiles/ProfileData;Landroid/content/Context;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 3

    const-string p2, "Exception while saving profile data:"

    const-string v0, "AFWall"

    .line 27
    :try_start_0
    const-class v1, Ldev/ukanth/ufirewall/profiles/ProfilesDatabase;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/profiles/ProfileHelper$1;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/profiles/ProfileHelper$1;-><init>(Ldev/ukanth/ufirewall/profiles/ProfileData;)V

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->execute()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connection pool has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    :try_start_1
    new-instance v1, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;

    invoke-direct {v1, p1}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/config/FlowConfig$Builder;->build()Lcom/raizlabs/android/dbflow/config/FlowConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->init(Lcom/raizlabs/android/dbflow/config/FlowConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 39
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static updateProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 69
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 70
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    sget-object v3, Ldev/ukanth/ufirewall/profiles/ProfileData_Table;->name:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-virtual {v3, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->where([Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Where;->querySingle()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 72
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->setName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->save()Z

    return-void
.end method
