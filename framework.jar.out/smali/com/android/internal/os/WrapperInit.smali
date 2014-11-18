.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "invokeWith"
    .parameter "niceName"
    .parameter "targetSdkVersion"
    .parameter "pipeFd"
    .parameter "args"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v1, " /system/bin/app_process /system/bin --application"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v1, " \'--nice-name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    const-string v1, " com.android.internal.os.WrapperInit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {v0, p4}, Ldalvik/system/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/Zygote;->execShell(Ljava/lang/String;)V

    .line 118
    return-void

    .line 113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static execStandalone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "invokeWith"
    .parameter "classPath"
    .parameter "className"
    .parameter "args"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, command:Ljava/lang/StringBuilder;
    const-string v1, " /system/bin/dalvikvm -classpath \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {v0, p3}, Ldalvik/system/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/Zygote;->execShell(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .parameter "args"

    .prologue
    .line 61
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p0, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 62
    .local v3, fdNum:I
    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 66
    .local v7, targetSdkVersion:I
    if-eqz v3, :cond_0

    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v4, 0x0

    .line 71
    .local v4, os:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 72
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .end local v4           #os:Ljava/io/DataOutputStream;
    .local v5, os:Ljava/io/DataOutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    :try_start_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 84
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v5           #os:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 87
    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 88
    .local v6, runtimeArgs:[Ljava/lang/String;
    const/4 v8, 0x2

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {p0, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {v7, v6}, Lcom/android/internal/os/RuntimeInit;->wrapperInit(I[Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_3 .. :try_end_3} :catch_1

    .line 93
    .end local v3           #fdNum:I
    .end local v6           #runtimeArgs:[Ljava/lang/String;
    .end local v7           #targetSdkVersion:I
    :goto_1
    return-void

    .line 74
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fdNum:I
    .restart local v4       #os:Ljava/io/DataOutputStream;
    .restart local v7       #targetSdkVersion:I
    :catch_0
    move-exception v1

    .line 75
    .local v1, ex:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v8, "AndroidRuntime"

    const-string v9, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :try_start_5
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 90
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #fdNum:I
    .end local v4           #os:Ljava/io/DataOutputStream;
    .end local v7           #targetSdkVersion:I
    :catch_1
    move-exception v0

    .line 91
    .local v0, caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    goto :goto_1

    .line 77
    .end local v0           #caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fdNum:I
    .restart local v4       #os:Ljava/io/DataOutputStream;
    .restart local v7       #targetSdkVersion:I
    :catchall_0
    move-exception v8

    :goto_3
    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v8
    :try_end_6
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_6 .. :try_end_6} :catch_1

    .line 77
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 74
    .end local v4           #os:Ljava/io/DataOutputStream;
    .restart local v5       #os:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #os:Ljava/io/DataOutputStream;
    .restart local v4       #os:Ljava/io/DataOutputStream;
    goto :goto_2
.end method
