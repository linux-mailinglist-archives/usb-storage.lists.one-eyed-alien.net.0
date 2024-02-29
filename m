Return-Path: <usb-storage+bncBD6LRVPZ6YGRB3OZQKXQMGQEFMSP4DQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D62A86CE6A
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 17:12:30 +0100 (CET)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-20494b09021sf1310756fac.2
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 08:12:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709223149; cv=pass;
        d=google.com; s=arc-20160816;
        b=B0CY28stNSCKvv8vS4XhHdQXbaHletgkbpe4dklbqHQstUlTvV8Dj3R1J9otiK6Fml
         Ye/Uz+cGxe6EDTFl6NCjoiMjWEA9gM9aeMZYJhGdKVwlHP3N+dxXDoDSOlyq1t6nVnCQ
         kKqDMKH1jJ7dn3T4iQfdZbWzxylpDEelwEmaO6WBa9msfFxBGZ+qmBxAHMEtBsrPX+Zf
         t6o7k+2Zroplplc+EXvGBGkOhGLu/s/1xCP8U2Lf2ezXxNFkNVtGV43wkqgr+ykALDYN
         P9eRhHG+VFETlhbiPDeJ2iMMSGibm+fjfE3FGh1HsvsKbEkEuqcWXMj7foHaBvULSv2b
         yprw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=VNRMgmo1+KVao1d1weRArTGeGzrOiDJe97uiUiuALP0=;
        fh=evRFABrt9C/QbAWW08EgUORXzYs/hf1lAbVv/Lq64Qs=;
        b=cNQ7vBWAt1woGw7R+7hdgU96O1v8D4B52E0WyHvEoFSMcjiHPRwTC0M/sDF13kTzX1
         +7X/YRDc6jE6mSRQ28cG0VRZd7RksYUmrzzaM8cuL96jgqL9FR/aK53nStR8kN1qaMk2
         wWzKgQxsMqcBxbbdEmOUoTNQBhFWJzT+UIRCNIBCpZa8CJ2WF3gnnRwdn6hNUf53/DMr
         PWNUJ1vOqPy5j6gsv+amE+XmzGDekfMw3R7NLV07hhP0cMwAPgdVTYnWy5cwMEtcvD9i
         rS3SJnM2xnmrdm/S0JtTxH3asinQqH8F9Fl7lmucGxYq+UCmvTpdezKz7piKUj7/u37k
         JVGQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709223149; x=1709827949; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=VNRMgmo1+KVao1d1weRArTGeGzrOiDJe97uiUiuALP0=;
        b=Zh/Pr7PSf/i6YlE5ZoIHPLlwgovvpWU91m/nL/jnv9YLxFQqZ2C7UEYf5fVBSd++2u
         +kvV3CYYeUcT88IiMeWHMaEb6/Eqbs+oBbH9TU9ryTefANL7z4fxhuHs3WdWzVO73R3B
         HNodulNbvOeE4Oagi3mZRE7Saq0YuY3Y4oTyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709223149; x=1709827949;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VNRMgmo1+KVao1d1weRArTGeGzrOiDJe97uiUiuALP0=;
        b=EVkhYGYVoK9Z8YuDJBBAGag6szevOewCWztPGVfYEfQHkyHFAXrHefXlUhb5SkU3nh
         ePUC5o+vwK5k2ABqZfbyHisydTu4EqQEwWM5lKQv65HxBIzHRrxcqlzjzpuhV/tCgpFm
         77LxfILRFDeKjGzrj2LE+557LtYB/O/3wdWj+EHnBm3C+jJwamI5C0m5tPj3/vACwNyC
         tIWc7S0lg+QyakSfe5tRBWvtd3QIdvZm6BsvHUsKtivy7mVdvIoJgD5vEcO2V1ncAggZ
         MUW6ENmQaVsBZYnBQ91oSuWqvMO6sgOGK3cJpGdTji6Echoa+zK66M6tI+bIFu/S4lnQ
         Q1QA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCX9K7CbwF24ubQKePF1WEBO48TIMMPvKukCV7c/e6KNxycsC4/hbv2h/Jk3YZ1w/4JcEW0j5WPdsQdlcZIHSmgMBHfvJjDJDkx1
X-Gm-Message-State: AOJu0Yzjm86DKS5EFpPm5LQwqV4xZxTm3jTJ7MHzyifIMfFPeBVgLn3B
	sGYotUxEogK3WwnFH5f1N+UPcouEdaYGRxRs1m5HB53apmDQREezVgW9TH9QATA=
X-Google-Smtp-Source: AGHT+IFB5aBIPwi+0PJTMXaU80FyBeusBBfVWjcCMAmgO/R/rh5P9YNN3VfcuzJTrXnD+7TLbBNzEA==
X-Received: by 2002:a05:6870:ea08:b0:21e:7a61:5a5a with SMTP id g8-20020a056870ea0800b0021e7a615a5amr2527558oap.48.1709223149116;
        Thu, 29 Feb 2024 08:12:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:a115:b0:220:98de:2627 with SMTP id
 m21-20020a056870a11500b0022098de2627ls346822oae.1.-pod-prod-04-us; Thu, 29
 Feb 2024 08:12:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW1ZzdQOihQ8v/QqN+e5UqT535Zj1S8Tr6F7/fBFvsNKrP2SgmuBItZ83qM1gCOQtFpNxpNpI19o+pdUvTKuLW18ZgE76omNeWUppyp3juZd198hDU=
X-Received: by 2002:a05:6870:471e:b0:21f:4bc:3b6d with SMTP id b30-20020a056870471e00b0021f04bc3b6dmr2382163oaq.17.1709223148300;
        Thu, 29 Feb 2024 08:12:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709223148; cv=none;
        d=google.com; s=arc-20160816;
        b=FbA/mnySaRrUgRKESud0aNVi4oy8BakYGzMfQ3lbqiaSOdt/syn2j/K+Ivo/ZCPj24
         mmWhaPtQ2wV+c2qQL500LdbiMMgdq5FF2faF3fmMEtpmnW/w2MmdKGwrtCCyRMo9RvOU
         arNaCcUY0v7JyazpqTzqaQVP2niSdgiUJUbsl5vHUDkANKjS/815Q+14SU+u9GjQtWBO
         geg/kyvkG+qCaVZSLtbMa7Wcsl2JHML1m9ZlYs+XgU+WGeDIvJkDeg/i1ye79FgvEtIQ
         IqDihFNI2RNrPXkv/64vmFLORNBDAvnLttOlj9etVK2cZt9wC9AJVEdPoDcRwH6MItWl
         Sqbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=AMgnyQYD1DFB2w/N0ru0nbhvcl4uy3G2r6Ls+/fqYVI=;
        fh=QLcpBc4YWpil2uu0+EzDygsjOSd1vnYPMVXMe0jLnEY=;
        b=I87mcxn81MC3E05/0yI7XxjxrLTjYrJ3jKxt663VQh0lkVqOxpjaUtJ9MKa5qwJQyP
         qu5QVgORdJAbrEjq0QBiv0T+oJgwQlAD49JtV5SgyFZrlOECuM38NTssi++VnroRSVOn
         b2AtciUETdwNA26S/FILm14ovNU64oyyff6R0n9oXQ3zhf81XZjyrzcuKQdFfQ11OE+U
         xjpkvgu9mRLTzecFxlFcuZaCt56TDBi4GHREeNpaEAvwDIMwZomOcYEQBr1Jbft/rOBE
         4fvpkhmxIvWRZdi/OWSz2cGFGw67tWK8E0E/aMtG1cZ1bIrsKZ/RkTFrnRmZg7IxP6Pq
         H+Vg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id p9-20020a05622a048900b0042eb8a546fbsi1726220qtx.161.2024.02.29.08.12.28
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 29 Feb 2024 08:12:28 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 827938 invoked by uid 1000); 29 Feb 2024 11:12:27 -0500
Date: Thu, 29 Feb 2024 11:12:27 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Aleksandr Nogikh <nogikh@google.com>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
  bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
  tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <914a01e5-9c7d-4f2c-9d2b-c5c8c99b4a0e@rowland.harvard.edu>
References: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
 <0000000000008b026406126a4bbe@google.com>
 <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
 <CANp29Y4DUvL5zsnqQmhPGkbc=EN6UjFrWF9EZGE5U_=0C9+1Nw@mail.gmail.com>
 <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
 <CANp29Y6hPF--pjWCa4bsAXWY15XoP2kmSg8BFP4ATGUpVbQgHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CANp29Y6hPF--pjWCa4bsAXWY15XoP2kmSg8BFP4ATGUpVbQgHQ@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65ee3650@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65ee3650@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Thu, Feb 29, 2024 at 04:40:05PM +0100, Aleksandr Nogikh wrote:
> On Wed, Feb 28, 2024 at 8:18=E2=80=AFPM Alan Stern <stern@rowland.harvard=
.edu> wrote:
> >
> > On Wed, Feb 28, 2024 at 05:52:50PM +0100, Aleksandr Nogikh wrote:
> > > Hi Alan,
> > >
> > > Please try it once more with the full commit hash.
> >
> > Thanks for the advice.  Are you a good person to complain to about the
> > difference between what syzbot provides and what it will accept?  This
> > bug report states
> >
> > HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.=
ker..
> > git tree:       upstream
> >
> > But if I specify "upstream" as the git tree on a syz test request, it
> > doesn't accept it.  Now you're suggesting that if I put f2e367d6ad3b as
> > the commit ID, it won't accept it.
> >
> > There's probably already a bugfix request for this, but I'd like to pus=
h
> > on it some more.  Syzbot's output should be acceptable as its input!
>=20
> That all totally makes sense. Thanks for highlighting the problems!
>=20
> For accepting "upstream" (and alike) as input, there was already a github=
 issue:
> https://github.com/google/syzkaller/issues/2265
> That syzbot is not able to fetch commits by their short hashes was
> only discovered yesterday.
>=20
> I've just sent PRs with fixes for both issues.
>=20
> If there's anything else that can make syzbot reports better, please
> let me know :)

That's great news!  Thanks a lot.

How will we know when the fixes have been accepted and we can use them?

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/914a01e5-9c7d-4f2c-9d2b-c5c8c99b4a0e=
%40rowland.harvard.edu.
