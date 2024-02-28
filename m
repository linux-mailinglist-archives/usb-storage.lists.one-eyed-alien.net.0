Return-Path: <usb-storage+bncBCXKTJ63SAARBVEA72XAMGQEZQ2GOPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1C986B7A5
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 19:49:58 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a04ee4c112sf47164eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 10:49:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709146197; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ev/0wEH3mQ0WPpo+64ssqPVBdDtDUghH16fEsyxo6zt4GbN7TKeF7T8CK0F4c5qj5W
         L8NVtOiMW+iLu43Limg98kPgo2S9opWb7Q7YYk6WnBbsPBShyH0v0DrqOZvrIUbigmwb
         9JgE/a/ixUhupJzVUcE2N8HziuDngGlQBoVLTcLzYQRFlA6NKcdJ3jz9ROlIGLvZ7FZd
         IgtxgqWIxSB3iEdnJTjCWWksVkKr9cEvWr5NAr1BewEnCEGRhkkCU/2TMHrhrPuCwh5r
         xn805g99X/JfFoH0/+2FE/b7OCvQ6wrI4GLrgblgig75wmpkxksORicxE6m5fYjUPggk
         z+XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=D/AqkRWp7punus14Iu498gnauvNxnaBAFw+wFd6RXiA=;
        fh=NmK972NwXuT+HgP0SSlA4CX/L5LWl6IK1MeO7rT6Hgs=;
        b=QrmSOy0vBjD1BJKTA9ppB4cFWY+BdT62OPzcevO1rJ5gair646gcpoLpntTnivlxcB
         qqtMaQMzgGFR/mh9GZfBtsZkkISfMX5wS2t0YJSBZvCu3xeUzYFwTlK7sNJ5DDpBm6+E
         4TLMxIvojQ/E/HUSqPwJsqHG5gB9drD90FYgvhKfkJptpvGs1SeaVekWr3em89yNxe+Y
         AdeeJgRf37zUFus+PvgyMLqoodWXi6qRBMtWYAdNl+D4e6z+EkD1FVY6m2bp6m0ZkAWE
         nPdvbA3zshPAF6hNXSjXf/Tbia/FPemn12/fYRh4ihDguvFBj0Hj8CQTjUMXEmp9I/U5
         3c0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=vMkNPwBL;
       spf=pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nogikh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709146197; x=1709750997; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D/AqkRWp7punus14Iu498gnauvNxnaBAFw+wFd6RXiA=;
        b=h7SkP/d9rE5KctWIGWl2WjhAaCzgst0Eb6GJSUMsurIbI4xzweNqfxkklEQELrDTe/
         ctug9hwyMbMQprdNTWpMxNDolrSaX46sRT5K3qhDG078DSsxDGw1sMKDldqmqGsdclWA
         jrVcS3SiakAW7BgcMSb5JaEP440VCPoAosH5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709146197; x=1709750997;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D/AqkRWp7punus14Iu498gnauvNxnaBAFw+wFd6RXiA=;
        b=IshFfuxNjh6a2s2ndoVdoEDroFocgZV9An9pRbpYuru8v9s5a4w02I/+3PYuuQ97dv
         FO0pLXgPsTPyXBMSvkZmAm23ahGDq7E2W9G2JFjf48FzqJ49Cp46TfB52nN3Ql4gLx4S
         UG4tpGjKTNAlTXrxdxc6pn1xsQ63VlXrL0mTkyLZXrXtK75qg753rqPk5z4oozF8DktH
         02ZCHuwiKhciSpzUFSKejXZizU5lKpgnzeYrLoCIEGF842aVZQK+H1BVk7/vGH96bekn
         bM5PLcD7qU9d/zaVoXp1Jr6lMf3Ax+CnqJ+39tiDckCjw4IIwfPRMOiaUdpNIpdrPwuc
         FGxg==
X-Forwarded-Encrypted: i=2; AJvYcCU6JzxJAjpkv81DUCHETj48NIwTHQPXrMfILuvKO0FB5snZXtjdkUaLcADfEwuaUvlxGjZ2blyZ4lrYPUBB76GVH1isdqmyTP0B
X-Gm-Message-State: AOJu0Yx9Z6hVHofW/CfOrx+zydd6ettvMRyEFtTtxzSX+f5GYJYLCLVo
	IRCbTOaGRQUu9+GD0DpfP3ND4vnHYwxIvbk7TkjP+r5w1nyrUs6Ks0QvyVKMLFA=
X-Google-Smtp-Source: AGHT+IElmoahdAV44L3IH7N3lHuqNa+/0JeGlJrEvuEDwG4+90CgNjgsBDDE78W7rW6tpWAra9Q5nA==
X-Received: by 2002:a4a:6c5b:0:b0:5a0:5ac0:e396 with SMTP id u27-20020a4a6c5b000000b005a05ac0e396mr534293oof.3.1709146197113;
        Wed, 28 Feb 2024 10:49:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:5503:0:b0:5a0:54f4:dd29 with SMTP id e3-20020a4a5503000000b005a054f4dd29ls57483oob.1.-pod-prod-00-us;
 Wed, 28 Feb 2024 10:49:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWcZGnFRK6EE7NoDpOhhmh4lUBAtukHB7FG2APgRCNMSrRS+ThWvUTZQrt4c+vtitnQ5KxVmtY2cstQvfreTthy6q0Z0mF2Nxw8DIlWhYWQcdQKadE=
X-Received: by 2002:a05:6808:188f:b0:3c1:add5:d2e1 with SMTP id bi15-20020a056808188f00b003c1add5d2e1mr48130oib.2.1709146196614;
        Wed, 28 Feb 2024 10:49:56 -0800 (PST)
Received: by 2002:a05:6808:2088:b0:3c1:931e:9973 with SMTP id 5614622812f47-3c1b7659b06msb6e;
        Wed, 28 Feb 2024 08:53:05 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWKaD/hu/M9zAg2a+e00BmD6X+N11iVeKkSMqqS9e4VObhG8nYZf5inpo49pRsW0Ru5tsO9K3M5acdZhxb4sCtouQIWLba4OXyTDZC+BZSbh+vMOE8=
X-Received: by 2002:a17:902:a512:b0:1dc:2f63:dfc6 with SMTP id s18-20020a170902a51200b001dc2f63dfc6mr2217plq.53.1709139184398;
        Wed, 28 Feb 2024 08:53:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709139184; cv=none;
        d=google.com; s=arc-20160816;
        b=ewbXltWPGTBJWjK6cGDyffzSQahTfXJ70gUnqeyMYfTBOZcTg/1V2aZFI04iCE70zp
         G6lfISzjVpbzKB7ixL2iVhqR4541UfADn/Z9YNphaYmzuiCrCaaYdauxAGtX0FWyC1xr
         xA4cPsZemFeZ5uUxOOB5tfvXgR+R01U9Csh+nFnCgh0YtictXIHFTZj6rDfFAmJ8grjA
         JBkaOxWAZqW8ZWKIvOp7lTY9XxDHtJ9jLdF5WgbKIS9g+xv7jrgl4yyVyMr5mVtwOvBr
         ZfCZqsXa6SXtfKm7nWEOg9qVe52LikRxqd1nOJXZZLGXZsehPwcM6a2xQav/CyTEgrDC
         0CUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DtF5/pdVuibkgPXJcntwpHSGdyt4hc2nkXEyG93pZvI=;
        fh=uUZTX/c+Ome/p2/kZ40iNttLharF8qFwAA6bQVoa0cI=;
        b=DWj7wkxKR5MfLnJSOcp43Gqg2aAvzaYbwYw7n06tydSJ8P8iNruV21SKZWiDOteTE3
         K+7PbinbYpkERk0dxXjkA91Dgl1H+3D8UZHujIqSbVOEg01PMia0kFsHiyUfD6zuf2CU
         maX4MXYjddGLKiZ4WugjMOTFMevMGN+9DqIydOlkYU5/GCQtlTMCgAvI9lv5eBYiMySy
         +H5YyXMV9gOkOXCAJQdpqkvfLrSmdwRPW7iZVmC2ba7SAguGqSKUS99SvYk0DbnIxv94
         XHRnYq7bVBQeaw7nMPDRO4KvvbIOwdigf+K5RBEtQBSCfE0l3lscyXkg2lTpfBVDAXsU
         Quvw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20230601 header.b=vMkNPwBL;
       spf=pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=nogikh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id mo7-20020a1709030a8700b001dc2833abe6sor436901plb.11.2024.02.28.08.53.04
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Feb 2024 08:53:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nogikh@google.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCW+JM0qCQo7sbo+f6P+jSo//WajhgKKvTKZBGdtIU1peKWMFGR1V3fZ4vhR+GF15MawQH1vG8b4vhyXkHAGiZJHqQsf/PxOguG4PBc+tYN+BShhKOI=
X-Received: by 2002:a17:903:18a:b0:1db:e5e3:f7ac with SMTP id
 z10-20020a170903018a00b001dbe5e3f7acmr70137plg.7.1709139183758; Wed, 28 Feb
 2024 08:53:03 -0800 (PST)
MIME-Version: 1.0
References: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
 <0000000000008b026406126a4bbe@google.com> <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
In-Reply-To: <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
From: "'Aleksandr Nogikh' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 28 Feb 2024 17:52:50 +0100
Message-ID: <CANp29Y4DUvL5zsnqQmhPGkbc=EN6UjFrWF9EZGE5U_=0C9+1Nw@mail.gmail.com>
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
 header.i=@google.com header.s=20230601 header.b=vMkNPwBL;       spf=pass
 (google.com: domain of nogikh@google.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=nogikh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Aleksandr Nogikh <nogikh@google.com>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

Hi Alan,

Please try it once more with the full commit hash.

--=20
Aleksandr

On Wed, Feb 28, 2024 at 5:12=E2=80=AFPM Alan Stern <stern@rowland.harvard.e=
du> wrote:
>
> On Tue, Feb 27, 2024 at 09:20:03PM -0800, syzbot wrote:
> > Hello,
> >
> > syzbot tried to test the proposed patch but the build/boot failed:
> >
> > failed to checkout kernel repo https://git.kernel.org/pub/scm/linux/ker=
nel/git/torvalds/linux.git/ on commit f2e367d6ad3b: failed to run ["git" "f=
etch" "--force" "--tags" "7b440d1b40dd93ea98b5af6bba55ffca63425216" "f2e367=
d6ad3b"]: exit status 128
> > fatal: couldn't find remote ref f2e367d6ad3b
>
> I'm going to guess this was a temporary failure and try again.  If that
> wasn't the case, something is seriously wrong somewhere.  I had no
> trouble accessing that commit using the git.kernel.org web interface.
>
> Alan Stern
>
> On Mon, Feb 26, 2024 at 01:42:26AM -0800, syzbot wrote:
> > Hello,
> >
> > syzbot found the following issue on:
> >
> > HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.=
ker..
> > git tree:       upstream
>
> #syz test: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/ f2e367d6ad3b
>
> Index: usb-devel/drivers/usb/storage/isd200.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- usb-devel.orig/drivers/usb/storage/isd200.c
> +++ usb-devel/drivers/usb/storage/isd200.c
> @@ -1105,7 +1105,7 @@ static void isd200_dump_driveid(struct u
>  static int isd200_get_inquiry_data( struct us_data *us )
>  {
>         struct isd200_info *info =3D (struct isd200_info *)us->extra;
> -       int retStatus =3D ISD200_GOOD;
> +       int retStatus;
>         u16 *id =3D info->id;
>
>         usb_stor_dbg(us, "Entering isd200_get_inquiry_data\n");
> @@ -1137,6 +1137,13 @@ static int isd200_get_inquiry_data( stru
>                                 isd200_fix_driveid(id);
>                                 isd200_dump_driveid(us, id);
>
> +                               /* Prevent division by 0 in isd200_scsi_t=
o_ata() */
> +                               if (id[ATA_ID_HEADS] =3D=3D 0 || id[ATA_I=
D_SECTORS] =3D=3D 0) {
> +                                       usb_stor_dbg(us, "   Invalid ATA =
Identify data\n");
> +                                       retStatus =3D ISD200_ERROR;
> +                                       goto Done;
> +                               }
> +
>                                 memset(&info->InquiryData, 0, sizeof(info=
->InquiryData));
>
>                                 /* Standard IDE interface only supports d=
isks */
> @@ -1202,6 +1209,7 @@ static int isd200_get_inquiry_data( stru
>                 }
>         }
>
> + Done:
>         usb_stor_dbg(us, "Leaving isd200_get_inquiry_data %08X\n", retSta=
tus);
>
>         return(retStatus);
> @@ -1481,22 +1489,27 @@ static int isd200_init_info(struct us_da
>
>  static int isd200_Initialization(struct us_data *us)
>  {
> +       int rc =3D 0;
> +
>         usb_stor_dbg(us, "ISD200 Initialization...\n");
>
>         /* Initialize ISD200 info struct */
>
> -       if (isd200_init_info(us) =3D=3D ISD200_ERROR) {
> +       if (isd200_init_info(us) < 0) {
>                 usb_stor_dbg(us, "ERROR Initializing ISD200 Info struct\n=
");
> +               rc =3D -ENOMEM;
>         } else {
>                 /* Get device specific data */
>
> -               if (isd200_get_inquiry_data(us) !=3D ISD200_GOOD)
> +               if (isd200_get_inquiry_data(us) !=3D ISD200_GOOD) {
>                         usb_stor_dbg(us, "ISD200 Initialization Failure\n=
");
> -               else
> +                       rc =3D -EINVAL;
> +               } else {
>                         usb_stor_dbg(us, "ISD200 Initialization complete\=
n");
> +               }
>         }
>
> -       return 0;
> +       return rc;
>  }
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CANp29Y4DUvL5zsnqQmhPGkbc%3DEN6UjFrW=
F9EZGE5U_%3D0C9%2B1Nw%40mail.gmail.com.
