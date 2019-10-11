Return-Path: <usb-storage+bncBCQPF57GUQHBBSOFQLWQKGQEV5PWYCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id 223D3D449B
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 17:42:03 +0200 (CEST)
Received: by mail-io1-xd47.google.com with SMTP id z10sf15253121ioj.1
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 08:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570808522; cv=pass;
        d=google.com; s=arc-20160816;
        b=YZVCuh9FW8rWYO06QTTiPLQG4T/T2oUbHqVXzumFjWoE4HcEfpBtOF2u/dvfX4VBlu
         S6Jns7Ep5QyVbc7Ri9Eve1qKRoMNVkHOK8/yc8ZFai/p831bX9FKbPXIJpqkwZMJZomZ
         F0PNHuxVWfZpb7meo0hKOdJpCa66tcKAYcTKIcAv7aIY3rgWqOBu0WujJGpGbC2nMhpi
         4Oy2zL0MyqlzXA3onesc56UVoVLbVIYbB4KksdjtVrwu5nZ5yhaU3u0OmfnzCKUkIVOJ
         /WrW78aZ9PNJmBllX4vNChN0czYI1P3rbGQLsLnR2F5U5D7r3TK7q3SnDe/2UbJWObVm
         FiXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=INnrNFutFyR9TSnomvqc7wx0+o4SW0iAJhaMLv2joJQ=;
        b=g9T5H5tvDgRj37rUvIAREneSK+AUQGZdDFh8CwghodAfxzxF1N9bwoxRn5CRlWvfHJ
         Pns0Z3fm8gSlI4psQIPq9B3cx9pSzMeSB2K3sI0BD2ogVhFqM6g/Y9Dxn879AmXz9ChD
         C2qNyJv/F3o1A/OQQc7zPWlmcxjo4XtQbAeaOCOgDEdVBvnoF0nY1FDBWHjTjfidxPaf
         1Vc8wfNrQwRLZ7m+ZLus7C5roaMT8j4Hu5Ong3m1/7dY9Q8rM/ABNlJ2rgJwsMJSlXe4
         aGK9OjboCOPx9bk3k2wc5dk2+KsuXcJyfPdwhoNz9g5pgx3OygnPMRXGCXl4Nde+ONh8
         hAgw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3yakgxqkbaiq067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3yaKgXQkbAIQ067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=INnrNFutFyR9TSnomvqc7wx0+o4SW0iAJhaMLv2joJQ=;
        b=EnVdIlr22ojj3NKsVLVhIk/+jHUJGXNliD8VHFM9N8htdnpJwfrF87oM40iQpJLAJH
         Fu5MXR0b/Srn1I8w8vVDHhsV847zcxzTGwxzTtIRD6Eko4pFCzYjWzkkqOHQXufFJ4Dd
         BRUOLp+D+dgKOrkEIauIb5zxXgN9CxI6qgqr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=INnrNFutFyR9TSnomvqc7wx0+o4SW0iAJhaMLv2joJQ=;
        b=je58UP98u1rAfgHHefipNlJEnIi8ZcE+1ldZP/Ep5G64XGuMSLD6KBGzktTWxPDqAA
         0zMPuxdWy1I8obtMWm+ZiZIcrgbueHdOJt22eA+N9qIb/AU7MATESKJNV142aFFMHMvX
         Nl/OIMxhyjvZwrHe7V31gqoM/nVo89FJP0jY1rDIdXmjF0B6UQgBAvvejwXnhYWvQb/m
         ZGpToQZhVu6bnMmFXD9RInlbifx5W3IfJBFvrtLuHC2KEn0/VbtotBsAmkFpywzL9sEf
         R2dCHCTbQKRl2ir7KL6VhgHmwLQzSobduNFUn1+whf5DL37J3u70ZwOKiqxvVQBV4Z80
         g2PQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWz26mNddcqQU//D6sI7NkwDyH7FBrYtC6vQT/1UryB0t9QzGKO
	QWvQUFsLaXHhNQkUMQ5KsuGqIA==
X-Google-Smtp-Source: APXvYqxyOU8Lrs8+dM6i0ib8At1bFZCshhrFUFRmF+HLZI/lGZ6iwBb0M7u7Ppo+X4Wwyg0xi+2P+Q==
X-Received: by 2002:a02:8408:: with SMTP id k8mr18933405jah.116.1570808521876;
        Fri, 11 Oct 2019 08:42:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6638:348:: with SMTP id x8ls1096073jap.9.gmail; Fri, 11
 Oct 2019 08:42:01 -0700 (PDT)
X-Received: by 2002:a02:c041:: with SMTP id u1mr1948260jam.69.1570808521408;
        Fri, 11 Oct 2019 08:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570808521; cv=none;
        d=google.com; s=arc-20160816;
        b=K6zwm4IZSYJS+MND8Vv/mt6q7CZL2cHhFkNgo6puOhjbmRwtzobwXR2V2o9r4RGoGe
         aLq8kPdTg8KE367XYJAXw1JDZSsTktfKPnDxbyeXwl2l1UV4OCHe7lCHzn8F3BARhn09
         TbcBdhdR+GtJVZOYJQe5ktcFQnE87V6tM5QQ9bFg2R8Iqo2ZqRasKLxDyIib93bSmi3R
         yxlqwYHUwzsZQOsgO1vwqeNKKNjTyDEHEOYHA9rle4HOrlZuhoo5oFsb04Uz1hI3mIfh
         95ME1shGt4+dYRquTjyIT/uUWZMW43+9TsDB6n4w8hPx75VUEcDIGUiyYycHOgd67K5R
         rWSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=kFsPfbIuVLLP06mBsnv++deRNxJoBeYlYpS0DCBKJRY=;
        b=Uc8tw7q4RrlHO3M58LL9xW5mnuyqLE0o3qR/T1dV5fqeXytiPHQ0x9jmIqxgvPO+R8
         m4GeOHt+NcteOtncLSoqOZ8KSg67wcO7LSdkOK0fAo6PDZ6GZcIcjkmgTFaCAABW0tnr
         W/C819DyHJIRmigSQXqdttUdbMQWHYECIilDTTOL9rtPsjKWbBuJZuDOPYHM9SsGyFwB
         DQu9z9N/wZRBMAoglL7XMhlqXqaoR4YPn3st7je2j1NwS5UMAfKyYjVny+pr4ILOc1HZ
         XF+ahVVHDDmdTVknQFFPFip5ab2rtJwj8xzpvJI70IJNvSVKqL6ldME2tG/PvsQU3tWW
         SSOw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3yakgxqkbaiq067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3yaKgXQkbAIQ067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id b14sor7357820ioh.33.2019.10.11.08.42.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 08:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yakgxqkbaiq067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
MIME-Version: 1.0
X-Received: by 2002:a5e:9b04:: with SMTP id j4mr106545iok.45.1570808521184;
 Fri, 11 Oct 2019 08:42:01 -0700 (PDT)
Date: Fri, 11 Oct 2019 08:42:01 -0700
In-Reply-To: <CAG_fn=WsN0d8VO6=4jtDP9rHqBMp0zBvJQ7qrvQhZkkaj6NNsg@mail.gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000ea5bf90594a45b81@google.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
From: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>
To: glider@google.com, gregkh@linuxfoundation.org, 
	jaskaransingh7654321@gmail.com, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3yakgxqkbaiq067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3yaKgXQkbAIQ067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

syzbot has tested the proposed patch but the reproducer still triggered  
crash:
KMSAN: uninit-value in alauda_check_media

=====================================================
BUG: KMSAN: uninit-value in alauda_transport+0x462/0x57f0  
drivers/usb/storage/alauda.c:1138
CPU: 1 PID: 11015 Comm: usb-storage Not tainted 5.4.0-rc2+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  kmsan_report+0x14c/0x2c0 mm/kmsan/kmsan_report.c:110
  __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:245
  alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:461
  alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1138
  usb_stor_invoke_transport+0xf5/0x27e0 drivers/usb/storage/transport.c:606
  usb_stor_transparent_scsi_command+0x5d/0x70  
drivers/usb/storage/protocol.c:108
  usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
  kthread+0x4b5/0x4f0 kernel/kthread.c:256
  ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355

Local variable description: ----status@alauda_check_media
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 11015 Comm: usb-storage Tainted: G    B             5.4.0-rc2+  
#0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  panic+0x3c9/0xc1e kernel/panic.c:220
  kmsan_report+0x2b4/0x2c0 mm/kmsan/kmsan_report.c:133
  __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:245
  alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:461
  alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1138
  usb_stor_invoke_transport+0xf5/0x27e0 drivers/usb/storage/transport.c:606
  usb_stor_transparent_scsi_command+0x5d/0x70  
drivers/usb/storage/protocol.c:108
  usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
  kthread+0x4b5/0x4f0 kernel/kthread.c:256
  ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
Kernel Offset: disabled
Rebooting in 86400 seconds..


Tested on:

commit:         c40e5c97 kmsan: drop some dead code in kmsan_shadow.c
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=153ba453600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=49548798e87d32d7
dashboard link: https://syzkaller.appspot.com/bug?extid=e7d46eb426883fb97efd
compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
80fee25776c2fb61e74c1ecb1a523375c2500b69)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/000000000000ea5bf90594a45b81%40google.com.
