.class public final Lcom/raizlabs/android/dbflow/config/DefaultConnectionPrefDBDefaultConnectionPrefDB_Database;
.super Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;
.source "DefaultConnectionPrefDBDefaultConnectionPrefDB_Database.java"


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;-><init>()V

    .line 13
    new-instance v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref_Table;-><init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    invoke-virtual {p0, v0, p1}, Lcom/raizlabs/android/dbflow/config/DefaultConnectionPrefDBDefaultConnectionPrefDB_Database;->addModelAdapter(Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/config/DatabaseHolder;)V

    return-void
.end method


# virtual methods
.method public final areConsistencyChecksEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final backupEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAssociatedDatabaseClassFile()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 18
    const-class v0, Ldev/ukanth/ufirewall/preferences/DefaultConnectionPrefDB;

    return-object v0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultConnectionPref"

    return-object v0
.end method

.method public final getDatabaseVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isForeignKeysSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
