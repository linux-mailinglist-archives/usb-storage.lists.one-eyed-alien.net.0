Return-Path: <usb-storage+bncBCQPF57GUQHBBEVX7WXAMGQEIK7PRYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F4686B45E
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 17:13:07 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3659343e9bfsf29936785ab.2
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 08:13:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709136786; cv=pass;
        d=google.com; s=arc-20160816;
        b=aZ/tqcHqqYbh8//O8eqxQjLeD/cB7AqRnqPtUwL1GieD9OXrQaBHRMkuFCu+zb1jAn
         7w5BBmQD1gQKSyb2UbBlEjPB0Y3OPUG25pyFanoKf008v2CBa4WHREtToeFiCi+aqW0P
         PJij26TkhCAoshVpK9N+mDg0vUy3/eRKFlChYP1z5derNtJ74wImS5ThEjRl0Dyg4ViY
         h8dzrF6e9y/zhjNC9n+TNkX53mhlT6S2AhhsSzt90dq3iv7eB4upFpFlbDlhmCaYWtmI
         x7RcEmtwpA8aqOQtByQAhCxhRhnDVFWikJ6+qJNdqM5B23rJapvfYIPVL/3pduH7UagV
         uVsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=24C3Lu+huf/uLg8upgcVZKjAHYdvwfmIxjb8FL+2J/M=;
        fh=bPtvldvK3mW/QylMlz8KJczxqdSzAe6Dqu4kKz2rXdA=;
        b=UCsBPHucMu49J2LhYwtBrEmzDW3m70aIuJd090fPEEcBsiiE4T0pqPXeQaxYtimBzG
         n4KVExEVkSqGSYIXqV+yc/FGsYkz48D5osC1qqjrx7XGLVPjHIFQb7VV9Sv3VpvSm81v
         4+/cgKD+9Z+x8t6Wpc89x1C/wVUprh9iY17D0mkzvNcVUQmXsRVSKRqve6WILVJORejy
         yzpafX8vOY77HR4qiTPOdVgYoWEF6ALp0lPz04yhm6pLslWRdnkIur+ipWYHZwHKWYPH
         Kapnp0Dd53cdqVs7FGjrII4BsnrJFtabZ7cHAdCk8gGUtzEoEhbYcHOBulgs90leQpGJ
         yZlQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3kfvfzqkbapktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3kFvfZQkbAPktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709136786; x=1709741586; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:in-reply-to:date
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=24C3Lu+huf/uLg8upgcVZKjAHYdvwfmIxjb8FL+2J/M=;
        b=Unh8jQIWxnYxjYY2KIG0Acfgm9JaZRZdsJ3z7LjJhA0vVWX3W5XpytznAy/TcOtL4Q
         n2EQBnvuIvFYeIaZz+Mw6o4ODsux/gBOrWownXtARDrzB3cCnQMNL7RJaFK/NV9yLYI0
         +8hraa3DDrdjeXStTPAEN3NaDyyrvVEh3OOZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709136786; x=1709741586;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:in-reply-to:date:mime-version:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=24C3Lu+huf/uLg8upgcVZKjAHYdvwfmIxjb8FL+2J/M=;
        b=HBHuaD1pmlgieelSCghK49cKyqAEOYvqhF08BQeCMvFUpeKC75f9mEUmLTLrAj5bXz
         F1OoCPYJr3UKBytJMQxyZguR+W8PTZJ5Suly7sxql5k4oNyeEDbSYbgLeR04n+mzb88t
         36eZDGL1+QsHQG2L03uNozRIReobzVcuImoN401GZv0vybdEDehYM8OPxgko1TVrgA6j
         ofpr5VSVdhCiS+8drU4LNOTEz9ZCg5iYd4UuYHfAlLxrvr+FChKDvAQb23qrpbw7l7xG
         SgHKcBdaVuj+wb3/qSdvsks+9gZZoQu4VLGrxMiP+AR9jdNbDlkZVvZ23HPkiZzeChfU
         RTfw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUp1VrJyklVMJzIgi6FSevqr486baQQAQt/7Mq4KgAq73mj5pCsmu27S2vW32xEhPBP07BXu2Q60v8tZHPmjxWtgin8SftEg/sa
X-Gm-Message-State: AOJu0YzMdqgROGBmy2VtMU4p5srttZENobzV0DUGc6ZHEk8hDaXytScd
	ZwV0wCe5w6GYcbNlSzcQG+URTFd4K+9JyMADC8ASvjGXDclh5BXxzxK6vSKXA3c=
X-Google-Smtp-Source: AGHT+IE/DaSeurmdDuww61Cmhe/kFsd+zRMGn3474eyz4moWhlEjg4JAfOM3rv05cZA/0iHQwVb9eA==
X-Received: by 2002:a05:6e02:118a:b0:363:c919:2716 with SMTP id y10-20020a056e02118a00b00363c9192716mr11726392ili.20.1709136786195;
        Wed, 28 Feb 2024 08:13:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:248d:b0:363:befa:de10 with SMTP id
 bt13-20020a056e02248d00b00363befade10ls3933684ilb.2.-pod-prod-07-us; Wed, 28
 Feb 2024 08:13:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVbEskFWghCcTuT6cocgMU0kCF9++Qhl6Iu2P0Fh8KAn88iDL7mL+FbmeI86YL5x5ekK9tl6QtWcW1EtH0ppbjMORhB3lfKiFt0XMGmj5rTi98Aow8=
X-Received: by 2002:a05:6e02:d47:b0:365:4e45:339d with SMTP id h7-20020a056e020d4700b003654e45339dmr14791113ilj.18.1709136785270;
        Wed, 28 Feb 2024 08:13:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709136785; cv=none;
        d=google.com; s=arc-20160816;
        b=SznbAEnlM3ImgA4GjzniFptA4ZXJO7CR7XZkbYNpkRb+91EXjg3XeBJCtuYFQVLIzx
         bheFFUZhR365Hj2cEoNrFJAMTH2+FosJUAAEjV2D1r0TADbF71UrYsdHvXBPNDle90Kj
         lqFnsZfcLDOITDYiTvjW8yocfwbrJTLF4+Xx7NUNJNjNNj8c1Fg9nuyEEmsnD3d7aIj2
         01R6Tus0fw515FrKJSNXCPsEVBaeZjX1ObEvYJU0D3X+doTCSbPp2y8PzC2v2xv7gH9W
         /IDy9lBYjtNLcqPcXHxNE28q5y1iB9CUIMl6CqXeB0WNO6AWZ9mCMMzSbZ9NbSsuyJZF
         vPnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=D2+BZjLMLPbTol5136AECdswnej6ENJrpqcO+Did4T8=;
        fh=PHSsKWPdlcTvr+oBpAILWveLW857qcUuCcI8b4uL0A8=;
        b=xuTIaiTB+L5NURnVejpAxaJ7Pfr7wvY/q6fCoLrLvcTIYG8lyrEAx5Ft6hHC3eRRIg
         Uf3oFGmFWqusfaH/EG38qRQ0syecqBS6g9Sd1D17e/uvs9Y14luZQJkQw3vr++8qQeR9
         TN6cT/IeE6uK+iLD7iD4PHesVcqMBg19696cyg7JrMpzRzKzpyXNf0ma5d68x0gcjNlo
         QspR6Pw4eK69pRUS5QOCCUFZp/1qeDBxwe1JRKO5Mx/YKXrLE8IkllxaLCyNH1YG0YQq
         S+lxgTlpXmLjPAZeTBoUk+8ryFu8jPtl7Tw55IVHmxCYX9opo6o7Al3VlA49NHDbMHcM
         DDkw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3kfvfzqkbapktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3kFvfZQkbAPktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id j29-20020a056e02219d00b003657c4f2b1esor540739ila.8.2024.02.28.08.13.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Feb 2024 08:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kfvfzqkbapktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
X-Forwarded-Encrypted: i=1; AJvYcCXvCYG1cB/k5KzAtWGQS7H3HutbJ8KTPe37O0pR/JGM4/33Z38ThjWbdzURb/VJRrFCsfk2BGAJ+k89KcgRcL4ikbHfDKnridc+wScz9wjNNtfpz3s=
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:9a:b0:365:616c:59dc with SMTP id
 bc26-20020a056e02009a00b00365616c59dcmr28337ilb.2.1709136784996; Wed, 28 Feb
 2024 08:13:04 -0800 (PST)
Date: Wed, 28 Feb 2024 08:13:04 -0800
In-Reply-To: <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000f1426a0612736a90@google.com>
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
From: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>
To: bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, tasos@tasossah.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3kfvfzqkbapktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3kFvfZQkbAPktz0lbmmfsbqqje.hpphmfvtfsdpoufou.dpn@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

syzbot tried to test the proposed patch but the build/boot failed:

failed to checkout kernel repo https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ on commit f2e367d6ad3b: failed to run ["git" "fetch" "--force" "--tags" "7b440d1b40dd93ea98b5af6bba55ffca63425216" "f2e367d6ad3b"]: exit status 128
fatal: couldn't find remote ref f2e367d6ad3b



Tested on:

commit:         [unknown 
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ f2e367d6ad3b
kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
compiler:       
patch:          https://syzkaller.appspot.com/x/patch.diff?x=164aa516180000

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/000000000000f1426a0612736a90%40google.com.
