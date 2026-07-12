.class Lcom/stericson/roottools/internal/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field static final BOGUS_FILE_NAME:Ljava/lang/String; = "bogus"

.field static final LOG_TAG:Ljava/lang/String; = "RootTools::Installer"


# instance fields
.field context:Landroid/content/Context;

.field filesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stericson/roottools/internal/Installer;->filesPath:Ljava/lang/String;

    return-void
.end method

.method private commandWait(Lcom/stericson/rootshell/execution/Command;)V
    .locals 2

    .line 285
    monitor-enter p1

    .line 289
    :try_start_0
    invoke-virtual {p1}, Lcom/stericson/rootshell/execution/Command;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7d0

    .line 291
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "RootTools::Installer"

    .line 296
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected getFileSignature(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 229
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/stericson/roottools/internal/Installer;->getStreamSignature(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RootTools::Installer"

    .line 233
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method protected getStreamSignature(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    const-string v0, "RootTools::Installer"

    :try_start_0
    const-string v1, "MD5"

    .line 246
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 247
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p1, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 249
    :goto_0
    invoke-virtual {v2, v3}, Ljava/security/DigestInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 253
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    .line 255
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 257
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception v1

    .line 264
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    :goto_3
    const-string v0, ""

    :catch_3
    :goto_4
    return-object v0

    .line 274
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 279
    :catch_4
    throw v0
.end method

.method protected installBinary(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "bogus"

    .line 81
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/stericson/roottools/internal/Installer;->filesPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 83
    invoke-virtual {v1, v4}, Lcom/stericson/roottools/internal/Installer;->getFileSignature(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 84
    invoke-virtual {v1, v7}, Lcom/stericson/roottools/internal/Installer;->getStreamSignature(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 88
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Installing a new version of binary: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "RootTools::Installer"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 94
    invoke-virtual {v9, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    .line 95
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    sget-boolean v2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v8

    :catch_1
    :try_start_1
    iget-object v9, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 102
    invoke-virtual {v9, v3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    const-string v10, "justcreatedfilesdirectory"

    .line 103
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v9, :cond_2

    .line 119
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    iget-object v9, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v9, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    :goto_0
    iget-object v3, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 138
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    .line 143
    :try_start_4
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    int-to-long v13, v5

    const-wide/16 v9, 0x0

    move-wide/from16 v16, v9

    :goto_1
    sub-long v18, v13, v16

    move-object v9, v4

    move-object v10, v3

    move-wide/from16 v11, v16

    move-wide/from16 v20, v13

    move-wide/from16 v13, v18

    .line 149
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-long v16, v16, v9

    cmp-long v5, v16, v20

    if-gez v5, :cond_3

    move-wide/from16 v13, v20

    goto :goto_1

    .line 176
    :cond_3
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 177
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 178
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 187
    :catch_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 200
    :try_start_9
    new-instance v0, Lcom/stericson/rootshell/execution/Command;

    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/stericson/roottools/internal/Installer;->filesPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-direct {v0, v8, v8, v3}, Lcom/stericson/rootshell/execution/Command;-><init>(IZ[Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;

    .line 202
    invoke-direct {v1, v0}, Lcom/stericson/roottools/internal/Installer;->commandWait(Lcom/stericson/rootshell/execution/Command;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_4
    return v6

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 191
    sget-boolean v0, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v8

    :catch_6
    move-exception v0

    .line 155
    :try_start_a
    sget-boolean v2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v2, :cond_6

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 176
    :cond_6
    :try_start_b
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 177
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 178
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    return v8

    :catchall_0
    move-exception v0

    move-object v5, v15

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v5, v15

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    .line 164
    :goto_2
    :try_start_c
    sget-boolean v2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v2, :cond_7

    .line 166
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_7
    if-eqz v5, :cond_8

    .line 176
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 177
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    :cond_8
    return v8

    :goto_3
    if-eqz v5, :cond_9

    .line 176
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 177
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 184
    :catch_b
    :cond_9
    throw v0

    :catchall_2
    move-exception v0

    move-object v5, v9

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v5, v9

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_d
    move-exception v0

    .line 107
    :goto_4
    :try_start_f
    sget-boolean v2, Lcom/stericson/roottools/RootTools;->debugMode:Z

    if-eqz v2, :cond_a

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :cond_a
    if-eqz v5, :cond_b

    .line 119
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    :catch_e
    :cond_b
    return v8

    :goto_5
    if-eqz v5, :cond_c

    .line 119
    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-object v2, v1, Lcom/stericson/roottools/internal/Installer;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 126
    :catch_f
    :cond_c
    throw v0
.end method

.method protected isBinaryInstalled(Ljava/lang/String;)Z
    .locals 3

    .line 215
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/stericson/roottools/internal/Installer;->filesPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method
