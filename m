Return-Path: <usb-storage+bncBCQPF57GUQHBBQNB76XAMGQEM6I6BZQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAC186BCDA
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 01:33:07 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3657cf730a0sf5678185ab.2
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 16:33:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709166786; cv=pass;
        d=google.com; s=arc-20160816;
        b=0/t9f2XJbnhcLM7Rd9o0TPyTQzjwoUmIxS6DaUhhUZSp1xI7mwb+WVPniKptX6soMY
         VNAryAbSS4y+XE/PQJ19p9paEI9sd/GuHLwGAICN20CL6A5B/3cC/ZrI93nRqx6cZg5w
         Rn3cVrJlrifp6NVNqjB3zHkjN6VBgaJvC5AktEDSAElKNw8whk2jIcX0UP+ZYt7PRqAh
         q/IQ5KwqqpWbJOm8LdZbr7GZBm/lDwoLG8oaAOk/hi5/91mzimGJ97K5EhE/7DALqqbA
         GW9XUsoM4y+DSvpiiMRRN/sZsmbGTkl8nBtPm52vBilIclAjKqWtHi9gcDQQ+d4io4+w
         mvxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=j8FVNKCBAS9Y6xoG2qJPO/ri+0LSAII8G0mfUzGTjBc=;
        fh=kA3GosuuUV0p6olWtr9a7jhWk5UPK8egqlzJU/RuZ6U=;
        b=RNDoFa3KNBQoixCwMvw8Iis157OXILjNcZo5tmtwE/My0U77wyCqegthMhjdORL/fj
         RUwTAfvUHHD/s1IB5dOzC/m8Cf5iaOTppbVt3DThzz40euMUOZzXjYuw/XQDPlvcR0Hh
         lTMepwcEfxM/o/t0MNv91IjV7K+foY4q7DS7z0tk6Qaqa0xL9QLKSLwmk2Xr1bXtJOaL
         hajinkiNoyFnI6nA77J7HJwyZ0JyF2x5/Cz5qDr/IPfb6Un8rwB9G8D2h9exxTiw7pI2
         s0mxE6fwtyLPvQOxaiCHQ1fwo8UDMj9pNTFJ8Akr7XYZpimP7XjiQI8P3Un8cdUk/bHv
         k64Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3wndfzqkbabcflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3wNDfZQkbABcFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709166786; x=1709771586; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:in-reply-to:date
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=j8FVNKCBAS9Y6xoG2qJPO/ri+0LSAII8G0mfUzGTjBc=;
        b=hsnvtsF9arydcNUqsj5zUcKBQkaC4KcyCuJMJrW27juTxY1irbDugp9ipnogInlnVX
         Kc4Nr9CBjmkjMK+NIiZ2WLPlIuJbaAO7MIf1nfTkcZAaeJWWO1u2OmJvcHJq1BgYKVWn
         QDJj7ULTJV7wwRbIqolSwNpbEGBAVGDnN+0SI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709166786; x=1709771586;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:in-reply-to:date:mime-version:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j8FVNKCBAS9Y6xoG2qJPO/ri+0LSAII8G0mfUzGTjBc=;
        b=naWZnHP3S6+LSwF4AeRhtgFLr4UctFHMt5kySp8jqJ0zN/gC633U8bSek6bc6GfrOT
         3LaabRpEiMOc+pKvG5vPEoMST9JpuLKM7kT1Ju6ADgz224rcJUBJlf6WFznq9d7jRGU/
         C7LCgECa29aChulcuqZNItzHkKU0W9Mgvn05+OaO0NAqdfbLb5evc/H1jnS0Nc8jydMS
         20RrlYqVzcxPiOgYUfady8PFBcn/t2OWs8Ecwq5jiM5CRmWTooIxL0gGYKsYjYyiwK7x
         tZ1bNRfsJoa0n9i+hT61XzRoQfwWmI6dsSsKBLHqtzdfKxq+OglA/l8Xbiw+iosFIzHu
         sKwg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWl0HhwhGl+35eXmB5iCx5AVMPr/Gwn7vaKaEdUtmK4EujRkNjwtqJwXVqx2XKWMPtOD8zYkIc8tvgcxMLaBO4KXyV5jpL5vrDN
X-Gm-Message-State: AOJu0YwzLGZlKXZAnz2DCaO15zwiE47cJoFULHZ34od9XOgLyy+qG/n1
	Rv1cxD2C7zBbejPV89t6WfSedACU7gxHstPf8Fw7+treVoakR5gzw7ObYugCMlU=
X-Google-Smtp-Source: AGHT+IG3kQtltNg0X8Jc/hA+lCDB3I7dKIJYDzyKJtwQIZkIfUsHRwf5A9DEQnCT2MWeAM0EXq9+fw==
X-Received: by 2002:a92:2a08:0:b0:365:a7f:ca06 with SMTP id r8-20020a922a08000000b003650a7fca06mr921422ile.2.1709166785840;
        Wed, 28 Feb 2024 16:33:05 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:de2:b0:364:f794:ec16 with SMTP id
 m2-20020a056e020de200b00364f794ec16ls319262ilj.0.-pod-prod-04-us; Wed, 28 Feb
 2024 16:33:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVinOGv2sNhnKFGYtn9nwewkby/EWkDLJ57l+ZwZpCZ1PYJA2qpJNdjFpkJ1HhBKxboVIc95A6nbimF78UejBY0jcCQ0swzUorNsI5H/6lh/FZ2CdQ=
X-Received: by 2002:a6b:e00c:0:b0:7c7:e52e:9333 with SMTP id z12-20020a6be00c000000b007c7e52e9333mr717094iog.20.1709166784895;
        Wed, 28 Feb 2024 16:33:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709166784; cv=none;
        d=google.com; s=arc-20160816;
        b=MFrnXkKL44UqDZZWwO/sK/57Wqt9g3czJUwVVybLRur1XVaG0QwbqitC2aPd6DtBLu
         jN8w5QzvX3SSLipvksiZ9hvTpnpoMIO75SbEhr3v39xlh43VUicBq5KT/mWkGCp81NE7
         bQiXY2TMN7OddgnPdgkXdunG5hgUus0hjoBkpcpJ1FmCcQUfp5nmJXfDouJnkZfWQScT
         30M44VFplgHQXUoZJHbsqW4rCsBIdhskKMDrg3SYMVMfcl208eGoPKPH42HCX4jYot5+
         P2ceH2S71nMVBb+cXIV8r9iqQ5TnAml/7LAC4canio/9AXcq3cwqIYMakoH4C7dkNM30
         TWXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=0muDEbmiXwsrbOFIxJLnIjoJRKmx4ahL9Ls0vOb96tI=;
        fh=eNYqKcsdlTuKEcimarh0QVRQdODxHVXdfTWAf+F7zLg=;
        b=fLULk0Ee7tSnZCAhRBi5vbRA4jIe+yen9bFHzLu5X5uYEHM2dr2VKw76JWFLH6HHBa
         lOqeLcthNswG0H31H2S9FEqsBVC601HoHV2rDLLCSazozDPc9e8txQqMYeXnrK5eDov3
         nKY0p+ku7Dc9v8+aBjy8GlPcTMX/ZeE0M04ExAXlk7H1TyYS8c7Cg7x5NQnj4+G2Yij2
         W2P7X0rRE/Cgc4fVfLPLA+dU3gusRotjpDNg/YluklSBiXw41O9HJ0P/bCJHqqyNLHGS
         3sdghjzyb3sBD/DkeM2wf0YFyQAHALaLr/R8wg+CRLZaYKJUekWDWArvok96QpQ9w/6r
         jK1w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3wndfzqkbabcflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3wNDfZQkbABcFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id u7-20020a02b1c7000000b004747af49553sor100698jah.11.2024.02.28.16.33.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Feb 2024 16:33:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 3wndfzqkbabcflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
X-Forwarded-Encrypted: i=1; AJvYcCVM+trKonclScEZez2dnWXHzsnxz8nqCX26OkWK2Ng6xi3kDbSUb4L8E6BzurtNNuC+wKenFuGXGP7pu3OPxE6ij+ZfCW2qLuQFNTgZuWKCLPr5Kbk=
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1cad:b0:365:1f8b:d103 with SMTP id
 x13-20020a056e021cad00b003651f8bd103mr42319ill.6.1709166784685; Wed, 28 Feb
 2024 16:33:04 -0800 (PST)
Date: Wed, 28 Feb 2024 16:33:04 -0800
In-Reply-To: <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <000000000000102fe606127a67f6@google.com>
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
From: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>
To: bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, nogikh@google.com, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, tasos@tasossah.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3wndfzqkbabcflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3wNDfZQkbABcFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

syzbot has tested the proposed patch and the reproducer did not trigger any issue:

Reported-and-tested-by: syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com

Tested on:

commit:         f2e367d6 Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/
console output: https://syzkaller.appspot.com/x/log.txt?x=15da3dba180000
kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
patch:          https://syzkaller.appspot.com/x/patch.diff?x=13287836180000

Note: testing is done by a robot and is best-effort only.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/000000000000102fe606127a67f6%40google.com.
