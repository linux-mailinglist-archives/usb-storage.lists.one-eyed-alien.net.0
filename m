Return-Path: <usb-storage+bncBCXKTJ63SAARBMULQOXQMGQEXYJXVTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E8686D145
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 18:58:12 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-29a82907e96sf866850a91.2
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 09:58:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709229491; cv=pass;
        d=google.com; s=arc-20160816;
        b=U8+KJ7OavCG49A007SoTfTSrWjUmZXS1R+N4cWtcuZsJlxB6o1ImlFvadZBzCO84Es
         aqMsH+ImMBNJXO977+OzhmhXCqxloopZfnxFtvMSkbPauX1JDeJZK5xCzco3ZHstvwbI
         8DZ1ijKFSFW0bsTHUN9sAH+S9IZ/yqelvVRpwAEHtbHeCNWR07ha9Fl23WtJtl277ZIX
         G1h5ctbnS6zoYKeuoVLdfwbXe8SulMuYBPgsHlfGrGz197q755b23e3TwMyoCFoUaggv
         0aDwXJYaa2eVLuu6Z5wcANaYTV4ztFGeCogH3BPUrx6afwtyIyghQ/AZRUNhNZDHvpN2
         mPTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qBFIrm86O9VU0O+W2iQ3DNp5NA/qPpdgMs1kSdF0yHg=;
        fh=GMintYge72a98v3lUI0cq/F8D8kJMv7BWwzMu7T7vCQ=;
        b=pXV2kmZaE5GnYXmBsl5LEjWr5i9/M1URAv8JtidukOMRLti0YcxjvOKKfHOdFHt7mz
         uG+aWtNKOIzt+HtCqcHvwOuff+BJhMJn5wxX9i+/QgX7dEt979C++disKQxFHbzylNI4
         AemFcEW2JGS+xLgO3MDGiyeRppyxQflhz5i9V8tW82Ju0FBCWSGrFmVZhfpDKJ5Q8LFR
         /Ory0bqCHCntF8vC+Ke+KvM0UXLU4moP7usw37gBXVWoTTIu4SPJ+WOkYyUDIAioUBnZ
         3y46ADhoMJkVCYI4f4yxWNzHGnmFoCbbHFeqEtpo+LhnhzWdYSq5eytrNYgMmscmJrB5
         u2Eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=gebU0p4k;
       spf=pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nogikh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709229491; x=1709834291; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qBFIrm86O9VU0O+W2iQ3DNp5NA/qPpdgMs1kSdF0yHg=;
        b=FKaJKfrfyd4dEcoQ5vFG2z9XXkwr0RReAYIFJntqxdeQ4gDHrS7rjHHCzn1yFQUlwm
         DZL4D3vlmWd+IbZFbHyhpQnMRO5w+2qYw18i7TDt/1Yc2nhFw5fIWGnGIDmR9n/zG8JI
         NQp+Fe+TxsuArLlU2RDykCsvqHaSB0d/yukMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709229491; x=1709834291;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qBFIrm86O9VU0O+W2iQ3DNp5NA/qPpdgMs1kSdF0yHg=;
        b=VLj4RxsrDLnle03v8Gv5D3Vcnw/14+MYbrI3sW5dp7WnlZVZgMKshAjw5fR8kLnP0j
         pkJvfdeqEMWmky5AsrL5d6rSMfdFX+SCj3xuYpd5LKKE4ZfSEx5yQn/W4V1ekWH12936
         RApuZZUJlYlS6CVyAw6WyX+559EfS3O5Bnj3eCY7dBJkDVayZj5ZZB/4ewA/X1erAuxP
         aZc9rRS3TF4kyJOPUacyPiK+8nOulz6mnbJuNgFG9R+nFsgZIlRgumSe308hqrGOqIah
         3AcRG/Bfwg4lQ2EemNbhglITSn/AwxjnkYo8XSZLYaswWf/2KK1vo5Zq4yGic/SvaHCT
         W5qw==
X-Forwarded-Encrypted: i=2; AJvYcCVTodusQQ1g6+Q67kDYbbV1sGtLO5VgjuwvVyr3HByzKaZ49rIawEb+kp9nIlV3Dingwx/p9CWUdCpd+2Jpyqzl3qfWvm5wkN4j
X-Gm-Message-State: AOJu0Yz77hsu9IguiCj+CCgOdgNghkQUSLuMvO0o0w+tmr9Szs2SMtiO
	B5xRhbzcOjgn6oY0t2XDlcF4NtdBqXwnZABfiDy8iG3rWD1ZRB3c7SzXP7lElgU=
X-Google-Smtp-Source: AGHT+IEncdrBfPedtoZYaVtLowUyGMtk68p4/J3eV42JYuTAC4pGYSbQ846V5tYEQJ0tHpAHUcQhoA==
X-Received: by 2002:a17:90b:143:b0:299:3511:1554 with SMTP id em3-20020a17090b014300b0029935111554mr2713770pjb.40.1709229490783;
        Thu, 29 Feb 2024 09:58:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:1d92:b0:298:e10d:b61a with SMTP id
 pf18-20020a17090b1d9200b00298e10db61als34905pjb.1.-pod-prod-03-us; Thu, 29
 Feb 2024 09:58:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX4/mWrCWzR0KNMO8W+aD0qBgLEfWfLvGQTa86LonJTgrPUfRrSG78+ucDgk2YMFm2IWqsTjzUuhy0d2EPL3lNmkbKMk7DcCQ++XdpVA6vjWpqt+0I=
X-Received: by 2002:a17:90b:4b4b:b0:29a:842b:d8b3 with SMTP id mi11-20020a17090b4b4b00b0029a842bd8b3mr2759126pjb.7.1709229489562;
        Thu, 29 Feb 2024 09:58:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709229489; cv=none;
        d=google.com; s=arc-20160816;
        b=GHKMilJmKby7hZpRaXiJEszxY2N83BERrqiTkVtZ2FN1NAkZDn948fquwHm8k1HYw7
         MpRHP1q6i0xitW91WDk2tb5kK/zolgMuhrgBR4f6VJaauowCsql0OZp462xlNKsNu7/A
         T01OFl/6VLzVIVbY4iu0mBFla4VmDRgHhXFPGLJhK6UaDjTPXYipirqk3NTvKg4/g3n2
         OfjWtpDZ3f85AoSSY0nq4JmJVcM4NwLhhCYqX4E1YeJwpDMS82LXTjEaIcO2ROCrPj+K
         UHYRGfE2Fx/SV9omW+bzfasmTNbybFf4N3UjcW39sxZ9uT8AQ5QEaJe1sdzC8gsIRakb
         zZKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Eqp/rOiCSNKQ/OKACBLykbnoZi7+lcDYG5TVjGWpFQk=;
        fh=Kua38oeVMRIriEh859CiJVIZMdbkC5y2GaxCtdsw1eE=;
        b=NgCRQ7/etQ9m8f+Bf1eayns9hqQf+D/P8s6sEmmqSPcnbqOAD3cHYv9T4BcrlIPyhP
         d5RKvpsc3Pz504Ea0FjJeUsXXku3dmy1Dh2MvC14MYiRDauenDLOUO1wWMDEWGaspEOZ
         TXSc0AeUozukBhge5dkL+0IA4gk9zVqjUvsfx5v87cZVPwjmkHU8LGvSPT5C7p5YrSLb
         ePxyEa716qJLPqKd04q3soc79g9tq8teIZ4SyOzqrsdTP5p2vbRTbnMsv+QW3M5YzqGT
         ow0ClFBcohNXaSi+2gPDH9aBNwluAk27GIerOz/GhZt13I1jHe/IMLZrjUyYrY/5Bgx0
         IM+A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=gebU0p4k;
       spf=pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nogikh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id t23-20020a170902b21700b001dc0139b001sor725116plr.0.2024.02.29.09.58.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 29 Feb 2024 09:58:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVv0qWMkBGxzuyHXdrnHIywKakN3MlkIBkVW1loaY0kMZ4/usdHzlEU7sJCRZSUyua6z4iRT8O/JkHVDybgYP1FaejgPmAetuIEfq2oXDXQ0lULDN0=
X-Received: by 2002:a17:902:ce85:b0:1db:e5e3:f7ac with SMTP id
 f5-20020a170902ce8500b001dbe5e3f7acmr158969plg.7.1709229488598; Thu, 29 Feb
 2024 09:58:08 -0800 (PST)
MIME-Version: 1.0
References: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
 <0000000000008b026406126a4bbe@google.com> <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
 <CANp29Y4DUvL5zsnqQmhPGkbc=EN6UjFrWF9EZGE5U_=0C9+1Nw@mail.gmail.com>
 <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
 <CANp29Y6hPF--pjWCa4bsAXWY15XoP2kmSg8BFP4ATGUpVbQgHQ@mail.gmail.com> <914a01e5-9c7d-4f2c-9d2b-c5c8c99b4a0e@rowland.harvard.edu>
In-Reply-To: <914a01e5-9c7d-4f2c-9d2b-c5c8c99b4a0e@rowland.harvard.edu>
From: "'Aleksandr Nogikh' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Thu, 29 Feb 2024 18:57:54 +0100
Message-ID: <CANp29Y65auc=aaxrpMS12x7g6GegQ9QFK7wVmc9HuTo=LNXTHw@mail.gmail.com>
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
To: Alan Stern <stern@rowland.harvard.edu>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>, 
	bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com, 
	tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nogikh@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20230601 header.b=gebU0p4k;       spf=pass
 (google.com: domain of nogikh@google.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=nogikh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Aleksandr Nogikh <nogikh@google.com>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
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

On Thu, Feb 29, 2024 at 5:12=E2=80=AFPM Alan Stern <stern@rowland.harvard.e=
du> wrote:
>
> On Thu, Feb 29, 2024 at 04:40:05PM +0100, Aleksandr Nogikh wrote:
> > On Wed, Feb 28, 2024 at 8:18=E2=80=AFPM Alan Stern <stern@rowland.harva=
rd.edu> wrote:
> > >
> > > On Wed, Feb 28, 2024 at 05:52:50PM +0100, Aleksandr Nogikh wrote:
> > > > Hi Alan,
> > > >
> > > > Please try it once more with the full commit hash.
> > >
> > > Thanks for the advice.  Are you a good person to complain to about th=
e
> > > difference between what syzbot provides and what it will accept?  Thi=
s
> > > bug report states
> > >
> > > HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://gi=
t.ker..
> > > git tree:       upstream
> > >
> > > But if I specify "upstream" as the git tree on a syz test request, it
> > > doesn't accept it.  Now you're suggesting that if I put f2e367d6ad3b =
as
> > > the commit ID, it won't accept it.
> > >
> > > There's probably already a bugfix request for this, but I'd like to p=
ush
> > > on it some more.  Syzbot's output should be acceptable as its input!
> >
> > That all totally makes sense. Thanks for highlighting the problems!
> >
> > For accepting "upstream" (and alike) as input, there was already a gith=
ub issue:
> > https://github.com/google/syzkaller/issues/2265
> > That syzbot is not able to fetch commits by their short hashes was
> > only discovered yesterday.
> >
> > I've just sent PRs with fixes for both issues.
> >
> > If there's anything else that can make syzbot reports better, please
> > let me know :)
>
> That's great news!  Thanks a lot.
>
> How will we know when the fixes have been accepted and we can use them?

The features will become available several hours after these PRs are
approved and merged:
https://github.com/google/syzkaller/pull/4538
https://github.com/google/syzkaller/pull/4539

I think Tuesday or Wednesday next week are reasonable estimates :)

--=20
Aleksandr

>
> Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CANp29Y65auc%3DaaxrpMS12x7g6GegQ9QFK=
7wVmc9HuTo%3DLNXTHw%40mail.gmail.com.
