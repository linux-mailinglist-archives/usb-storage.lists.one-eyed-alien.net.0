Return-Path: <usb-storage+bncBCQPF57GUQHBBA526GXAMGQE3ABWEYI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1E6866EE5
	for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 10:42:29 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3651d2b88aesf32572445ab.1
        for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 01:42:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708940548; cv=pass;
        d=google.com; s=arc-20160816;
        b=yW/VM/SdqqMkdOqCJTSJ2wZ9WmMs15ypwA8Q0SclWC9U8pA91IZeWrmAtI4N6u4/GB
         1pLielnIP6VRtirG2naBXYMzHajmBej/DWCQvUe51YieopXn528/ZcMoMqCClI0S4PEw
         3BCVoXYr+e/HXqcocRM8zo7FV8WIoP+gGQz/9LaUr1xFJrYNzvsa8xAVcL+h6R50WXna
         cbuoFXMRTh39aUwFfc4/4TY+ZpF9MHfvhqe1qArbHV9buLzCaEETBRu15T965P5kGbc2
         qrvlDf3a4PUjfWhq1C0s7PMQamwAW39VNUA6pWvWgh/J+6y2dH/jsILtx1INbDBh1H3z
         w2Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=A24Q5Ufpj4ppiLVUi0oEqzi+ADW2nVfHUens0C9ZAB0=;
        fh=9bCFQMZmjFY3jgZ3vNzE5SL1UvX7RBntwO/dJGjDlC0=;
        b=jj9lQi+QCtxR9psIHRjFXGscpRdS102O27CHe6jS/ToNcppAJKJNiFkqa36zH/qhG8
         gXiAOih6QDXwzJDhuXqeZ52EpeT0PJ8ng5TZ3K7TI1e2bILf31uIp3gy1DzZ0ZT2w/Dq
         4TCwT2dWHa7m8FNnb3KbUy3n5peimCBIricEjN+sZnVvdF0Z5nnbgmNyblza+KSM1cW2
         U9f7xvOMyLJaeWQytgVfgheLtkLQAGbju0oQjJz6X+BULp9JbVtMNgCekdmhTkeyQkR7
         cxeH4Pf8Zndltq7/nRbzfLxOeC+8/LarkRMk+7Nkw2oHaQ0hKDPO9S6wdKqbMwJA8UJP
         A5+Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3al3czqkbagmtzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3Al3cZQkbAGMTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708940548; x=1709545348; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:date:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=A24Q5Ufpj4ppiLVUi0oEqzi+ADW2nVfHUens0C9ZAB0=;
        b=NboQskocRg4+olwAeVpftAKBEDRZEKFq5zoSVYIISkVBEfA6G8OI4yq7jvQdZi/80b
         VgIRTBaXeLVn3q0X9VKSDz5ewWU+UUrRWsSAOlfDHvF2V+Bd2H2ZO3qocrcbkTRe6wHU
         5jHX9Mg9AhjEfNeP9QxIUZmIFRcT3glfJvz6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708940548; x=1709545348;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:date:mime-version:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A24Q5Ufpj4ppiLVUi0oEqzi+ADW2nVfHUens0C9ZAB0=;
        b=R38PYJG4nr/RcyX7ZTVoszvdRYl/pkyd3vtXv4qJDPxcL++12vSOCgDN0xPupUSrXA
         TVbkhfN1k9dz3v4M9VoQtwKu93gzBvNMlYiwEByhOOjhecf/8PKj8PNqr+Y+a4dPNPTO
         3/XCeJ+BOIFJ9IJZY/9Keg+AtyccLhAhSq5s8IX7crsg5YO8zDTOBDNpEjxyU6Zs/e8x
         ouMAXi5RLiOKjeUVKZAp7W/BSLVIV42N6tABbK0O89PFLO9+8mg6QfINbDbw9zdR/Avj
         w/LycRB1qcHEP5d93Giz3p7ybe7y0aN+mk48Ttoy6k2MQ06isPc905/0Y7Boe9Lwwlqb
         B0GQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWdft+Tu1J9Cvl7yKMR5Z+EKpTdqtijvCebPaWbiHhBYxIrPL9QDV3FbeNfgFXe2Nzj2kXgWjeR/TUeLqvt5hrRA6VkIWAflE7P
X-Gm-Message-State: AOJu0Yy+1e7miJLFZ6r4CDRYifd/Bg4Ig+uBzVcNpcMjLkjTiVPXcJzs
	r/Or+KSm50cutTPc+kdEZgH0SXmodegf3zApukp/aiZU8QTkstRfv0ncSRV7fYI=
X-Google-Smtp-Source: AGHT+IGciqmZ2hsMF4jClrbdl3QLgXJEQyW2wUvbe/pNIYBE7+cw/5FqbduQx2t7TsOcbyauyVQiLQ==
X-Received: by 2002:a92:ca81:0:b0:365:1780:2ca6 with SMTP id t1-20020a92ca81000000b0036517802ca6mr7241991ilo.22.1708940548110;
        Mon, 26 Feb 2024 01:42:28 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a92:cd83:0:b0:363:8ef4:5a93 with SMTP id r3-20020a92cd83000000b003638ef45a93ls2242585ilb.2.-pod-prod-05-us;
 Mon, 26 Feb 2024 01:42:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUIEdz0VOrzJ9Io2tFbG8tsRhvV19gk9iL5OKVT/EtZkajmyYP8uthvITP1fIdZZ8zIaPu6Vt9fdhH0o1TEMsX6INEpnefxuYI4uZiXDtx77FxiOzM=
X-Received: by 2002:a05:6e02:1845:b0:365:19a6:31d0 with SMTP id b5-20020a056e02184500b0036519a631d0mr9769146ilv.4.1708940547230;
        Mon, 26 Feb 2024 01:42:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708940547; cv=none;
        d=google.com; s=arc-20160816;
        b=ybn78XmDLFALaFL1vNVD9/suBQ5Jk6Zqa7RTrKT7WTtIujh/JZ0BmpBh/8xMjEwQtE
         8mNUqjSxfqakoqW1N/OXWohtmilARfNXR7N2LdLQFjI0xLSpJCx4lWvdb3Yj6D+YEbb8
         rVnEvzuUTXPHTYFjb0qDujPl8l6Uj1Eh5Hib5tyrIBfEgbrILz4iwIKghGNTUhXESO9Z
         rMqCGCK7U1+Kk4TbzDmSH4/bmvYGLW6QUYSFqUzu27BGTgLZlZh7vBnsWC7rrBlNDSaL
         uJNvnhRrxD9pMUY1nUgJofROP7JlvfmHqS38SufGzqlIWTUY54aRHMyfULApQpTJcyQc
         PYwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=6mzm746klVmYl18EiU1HABrzvIW1GEwskKuL2oGrXzc=;
        fh=DXjMd+UmN3K00vIR+YHhYcszoCr/rG4zmXC6Oipi610=;
        b=ShEl6nK+vZBxQ9+RG4toWXysKYCYv5hKqAZ07mwTISOgUpym7Nr+q4iE1z+tuXRP3f
         6A4GiTg9hFNBaXqPUyiJsGdizOGA+YfMeU6nkwxMHRd8KAcca3fILxXLjpwrX5b7Kkh7
         RnvnSWx68rDv1Hz7Li+QIe4SUUBLJhHwvcGEB2W3jV2XVy0SqhVlFJXYqRR10oiolZCO
         6IIBsdiNOmhqmio3GRA8OgsHfjscy3xhceQAj6t5EsjPMH/1kxRv3qtpUuGRvo5OWIKP
         7u/sQFdc4XX6sV+fuf4s8E04MFyxwDL1LPN6U6515l66wEDhuh1P5nimku1ujhQIDDk0
         Xm7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3al3czqkbagmtzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3Al3cZQkbAGMTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id a25-20020a029f99000000b004742bdf0c3esor811599jam.14.2024.02.26.01.42.27
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 26 Feb 2024 01:42:27 -0800 (PST)
Received-SPF: pass (google.com: domain of 3al3czqkbagmtzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
X-Forwarded-Encrypted: i=1; AJvYcCWmLqGeQOcDyrDHO39RoVyEe7yTPi2mP5Qf+Alg3TxcGXDTq41BIPvMoQA1rDYMNmyqjJk6Hr/OD74BHaxkWdLsk1Ceyd3C4E5FOAJi3naAyTYxnOI=
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1d86:b0:365:26e3:6e48 with SMTP id
 h6-20020a056e021d8600b0036526e36e48mr515484ila.0.1708940546977; Mon, 26 Feb
 2024 01:42:26 -0800 (PST)
Date: Mon, 26 Feb 2024 01:42:26 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000003eb868061245ba7f@google.com>
Subject: [usb-storage] [syzbot] [usb-storage?] divide error in isd200_ata_command
From: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>
To: bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, tasos@tasossah.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3al3czqkbagmtzalbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3Al3cZQkbAGMTZaLBMMFSBQQJE.HPPHMFVTFSDPOUFOU.DPN@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Hello,

syzbot found the following issue on:

HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=114e10e4180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1064b372180000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10aca6ac180000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c55ca1fdc5ad/disk-f2e367d6.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/4556a82fb4ed/vmlinux-f2e367d6.xz
kernel image: https://storage.googleapis.com/syzbot-assets/95338ed9dad1/bzImage-f2e367d6.xz

The issue was bisected to:

commit 321da3dc1f3c92a12e3c5da934090d2992a8814c
Author: Martin K. Petersen <martin.petersen@oracle.com>
Date:   Tue Feb 13 14:33:06 2024 +0000

    scsi: sd: usb_storage: uas: Access media prior to querying device properties

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15a3934a180000
final oops:     https://syzkaller.appspot.com/x/report.txt?x=17a3934a180000
console output: https://syzkaller.appspot.com/x/log.txt?x=13a3934a180000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com
Fixes: 321da3dc1f3c ("scsi: sd: usb_storage: uas: Access media prior to querying device properties")

divide error: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 0 PID: 5070 Comm: usb-storage Not tainted 6.8.0-rc5-syzkaller-00297-gf2e367d6ad3b #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/25/2024
RIP: 0010:isd200_scsi_to_ata drivers/usb/storage/isd200.c:1318 [inline]
RIP: 0010:isd200_ata_command+0x776/0x2380 drivers/usb/storage/isd200.c:1529
Code: 62 fa 49 8d 7c 24 0c 48 89 f8 48 c1 e8 03 42 0f b6 04 28 84 c0 0f 85 00 18 00 00 41 0f b7 5c 24 0c 48 8b 7c 24 18 89 f8 31 d2 <f7> f3 41 89 d0 49 83 c4 06 4c 89 e0 48 c1 e8 03 42 0f b6 04 28 84
RSP: 0018:ffffc900043ffc00 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff888023230000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc900043ffd50 R08: ffffffff873161fd R09: ffffffff87315c95
R10: 0000000000000008 R11: ffff888023230000 R12: ffff88807f7a0000
R13: dffffc0000000000 R14: ffff888021da1000 R15: ffff88807c10a110
FS:  0000000000000000(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000563828985bd8 CR3: 000000002e0cc000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 usb_stor_control_thread+0x4b1/0xa50 drivers/usb/storage/usb.c:368
 kthread+0x2ef/0x390 kernel/kthread.c:388
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1b/0x30 arch/x86/entry/entry_64.S:242
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:isd200_scsi_to_ata drivers/usb/storage/isd200.c:1318 [inline]
RIP: 0010:isd200_ata_command+0x776/0x2380 drivers/usb/storage/isd200.c:1529
Code: 62 fa 49 8d 7c 24 0c 48 89 f8 48 c1 e8 03 42 0f b6 04 28 84 c0 0f 85 00 18 00 00 41 0f b7 5c 24 0c 48 8b 7c 24 18 89 f8 31 d2 <f7> f3 41 89 d0 49 83 c4 06 4c 89 e0 48 c1 e8 03 42 0f b6 04 28 84
RSP: 0018:ffffc900043ffc00 EFLAGS: 00010246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffff888023230000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffffc900043ffd50 R08: ffffffff873161fd R09: ffffffff87315c95
R10: 0000000000000008 R11: ffff888023230000 R12: ffff88807f7a0000
R13: dffffc0000000000 R14: ffff888021da1000 R15: ffff88807c10a110
FS:  0000000000000000(0000) GS:ffff8880b9400000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000563828985bd8 CR3: 000000000df32000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
----------------
Code disassembly (best guess), 1 bytes skipped:
   0:	fa                   	cli
   1:	49 8d 7c 24 0c       	lea    0xc(%r12),%rdi
   6:	48 89 f8             	mov    %rdi,%rax
   9:	48 c1 e8 03          	shr    $0x3,%rax
   d:	42 0f b6 04 28       	movzbl (%rax,%r13,1),%eax
  12:	84 c0                	test   %al,%al
  14:	0f 85 00 18 00 00    	jne    0x181a
  1a:	41 0f b7 5c 24 0c    	movzwl 0xc(%r12),%ebx
  20:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  25:	89 f8                	mov    %edi,%eax
  27:	31 d2                	xor    %edx,%edx
* 29:	f7 f3                	div    %ebx <-- trapping instruction
  2b:	41 89 d0             	mov    %edx,%r8d
  2e:	49 83 c4 06          	add    $0x6,%r12
  32:	4c 89 e0             	mov    %r12,%rax
  35:	48 c1 e8 03          	shr    $0x3,%rax
  39:	42 0f b6 04 28       	movzbl (%rax,%r13,1),%eax
  3e:	84                   	.byte 0x84


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0000000000003eb868061245ba7f%40google.com.
