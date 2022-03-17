Return-Path: <usb-storage+bncBC3ZPIWN3EFBBEUQZ2IQMGQE2TRTMGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lf1-x146.google.com (mail-lf1-x146.google.com [IPv6:2a00:1450:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 9304E4DCE84
	for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 20:12:19 +0100 (CET)
Received: by mail-lf1-x146.google.com with SMTP id bp30-20020a056512159e00b004484bd7ffe9sf2085200lfb.5
        for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 12:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647544339; cv=pass;
        d=google.com; s=arc-20160816;
        b=x4yYyAruQ173ub4E7oTWhvfSQFvyYUGFX1KFE9cPA4r9kVyR9xqie6Zby2esBzxXYJ
         4t4rAZ+jLMS1AE1QEvDWDHhvmmJgr83tNvzvyELAI5xLrrB+wqZL2x0UX+vAzDHTjgAb
         3+tzHwVe+tXdBsCbGM40IicnY9ly7yh//WGnQUKMiWHTCmG9nVGdbQZRUeHTrcNtgIh/
         KtCBRz23j5lw375TR1uwrmO8QlxNqcLw3bXzSuLJcjw8lSPvCm2UqnIwa8Q/H3R0je79
         nWkakqMkBI/sLp6Ge+VPRmVuW4MzB05JsnY5FYExEpFe7OflE0ocmBVRSbRzdpi9Wuhk
         exIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=QjgsmqN4GfqFlpGGVulwDs9dHbPIoapYJE4zmEMv0Hs=;
        b=1CEDgseeNkVO8XrMfWLBnczvCcysOXwuYUOb9F9yMwE8z+NObx9fYXIfQHNIzRroRN
         +QDkXnqcE6hCbEshcMAzSmXuxmoJa1B4xw92D/bskSihoOnxOckkGRgk7L4DS6EjFJpr
         EuwNOa25VsteUR8nUAZqZozLNMqmLWBUJ0QnppMY10gNigEtJLlPvr0tbV9h5XS1G1DU
         bCQIfp7LC8bN0AT8fbHH+LxKOrkpblWXl9HMrDtPFWmBnaw9ULxAmRegoVQEfiqVcZ4t
         yqRqCK7k9QR1RmY0faYRWMRqIovzIEl7I3Ft1WE9FvRlxRY0/pdwXPEKfPsiSFIZte5M
         qisQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Lzg8x3KC;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QjgsmqN4GfqFlpGGVulwDs9dHbPIoapYJE4zmEMv0Hs=;
        b=TZzDG8suRBy72sMcW9bkLgVmRW+JcTnoRvWhDO6hQ1GsOcb4FUIWrm6E05ZGkqF1qA
         JlXaDvymioH9Qzw8BTu66lXl5rFsjHCItUxb2W/FtOH4lHS/K1vui1z0JFtBq8D+Nm4i
         3xzXygWBqPMnH5NTdIvDBD9uZa5vYCdchtP28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QjgsmqN4GfqFlpGGVulwDs9dHbPIoapYJE4zmEMv0Hs=;
        b=J6HEX7nizOo8nkabPHR3nw1MuBoGM8kFAQjYMskh918A+9wfDsu5I6wwMEoypzfkZP
         iQW1XQEsudXiFnZoPwyIYeshor+GJ6AvfqVep6nqe7LO8FXJVkAkJU7jRtEzQeLRCA+2
         rBl1hFOGpg/Ih1CjGGEexrt6zn4EU2YwSfiwFNY17d26vqSCHjI8fG6pff2I5eWqHE25
         y1+KMau+n+KHef/3mEnruiTe0ccqL868vCamYzrsB8LyGYptGdjFiCTwEjLS1fgR4BYW
         RzGOzm9G3T6aUcgiJM8M++1Xc6D+6frPM3XlApu0oYt+ULYRUGQ5l1i9l24spvsrkpQ8
         Sxrg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531rl+p5jnMnZO4rj6T0HXwZGR5PgnWiiUnmt4MQ3YhKmmlVaAeM
	rsNiljK7BOuwwkaLE/oUkRk/og==
X-Google-Smtp-Source: ABdhPJzGHGCqzoLPSCzJK2YSChbO2wqiUWMly9RXW4bluLBaGXxngs+Gq6kOZrECXj+t3NfHj8vVcQ==
X-Received: by 2002:ac2:5387:0:b0:448:301e:7736 with SMTP id g7-20020ac25387000000b00448301e7736mr3958355lfh.620.1647544339037;
        Thu, 17 Mar 2022 12:12:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:651c:1241:b0:248:b17:7fcf with SMTP id
 h1-20020a05651c124100b002480b177fcfls1225774ljh.8.gmail; Thu, 17 Mar 2022
 12:12:17 -0700 (PDT)
X-Received: by 2002:a05:651c:543:b0:247:eb38:14f3 with SMTP id q3-20020a05651c054300b00247eb3814f3mr3925179ljp.526.1647544337755;
        Thu, 17 Mar 2022 12:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647544337; cv=none;
        d=google.com; s=arc-20160816;
        b=os5cLuTNKO4vfiiaTltR1eIGsKBeRUGY2t8ChtwO2flmUdEer/u9a1zRtMVcZl/vOD
         U74HKrqI7vrmYaAHNgmZWQAt7VNdjXxX7JeHtW+DaB57xdH7xB6H512MAvPj/ReEeE68
         OkryvnrKmsPNsce/oLVeH29d5Z/vv2jwtzSDLNVggZ/+1JH45JazwVYVD/sBiJfc7JE2
         mf5ZD9trJh/Sno79IeTnP5FfhDIXiy9O9biGZmffGP67FnguGc0ASa+7l1IkMv/Oap4i
         F3n9/8PScl50YWC422ZMvFvNLpgURXyrjSXo7aKI/DqJLtlfJYrRSVQsLCnziKrlrhR/
         mgZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=70wXCEMgvAba9C3vGcfmMLOn2TwRxcgtIcIQrKsC1PA=;
        b=r/JTGhJI332ZtSiWFnCI/FwHsEng+Ni2Ffg4vWy0YtISZo59VBJk49TuUxprwryBwq
         JOD6f0AEfGgIx0/WKjc2FlGqK2ikO/qCB/IqjiwuBZ/P193n2tVuUGe82g6uhAWmHIsg
         ug3Dn54nDahhrLNaMoS8macMQwagYOSbSyorTr7XSO7tBAukr58wZ5y1RpTdFb6pTuCK
         bc60lDXEVmi01lRebbMOwyA3+A6bqPSWxtv7mjRAVZ9XGUT82DH7H1AES5t66AnNgTmy
         0QMJRV1uBfMMs1jjHOn7evNb6iSlL3GcIl8bdJsjSrYKVj9rE2gx4oBm5DmQ0qEWnsWW
         uhOQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Lzg8x3KC;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id bu34-20020a05651216a200b004483066281dsor836768lfb.59.2022.03.17.12.12.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 17 Mar 2022 12:12:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6512:689:b0:448:baa7:154e with SMTP id t9-20020a056512068900b00448baa7154emr3724359lfe.230.1647544337032;
        Thu, 17 Mar 2022 12:12:17 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id bq5-20020a056512150500b004433c791651sm513130lfb.69.2022.03.17.12.12.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 12:12:15 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id 25so8506580ljv.10
        for <usb-storage@lists.one-eyed-alien.net>; Thu, 17 Mar 2022 12:12:15 -0700 (PDT)
X-Received: by 2002:a05:651c:1213:b0:247:e2d9:cdda with SMTP id
 i19-20020a05651c121300b00247e2d9cddamr3813842lja.443.1647544335450; Thu, 17
 Mar 2022 12:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <6232d299.9omOW8g6S6l31UFc%lkp@intel.com> <YjNfHsqfjPqBMejZ@rowland.harvard.edu>
In-Reply-To: <YjNfHsqfjPqBMejZ@rowland.harvard.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 17 Mar 2022 12:11:59 -0700
X-Gmail-Original-Message-ID: <CAHk-=whkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ@mail.gmail.com>
Message-ID: <CAHk-=whkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ@mail.gmail.com>
Subject: [usb-storage] Re: [linux-next:master] BUILD REGRESSION 8a11187eb62b8b910d2c5484e1f5d160e8b11eb4
To: Alan Stern <stern@rowland.harvard.edu>
Cc: kernel test robot <lkp@intel.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LinusTorvalds@rowland.harvard.edu, 
	USB mailing list <linux-usb@vger.kernel.org>, 
	USB Storage list <usb-storage@lists.one-eyed-alien.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Lzg8x3KC;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 209.85.220.41 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Mar 17, 2022 at 9:17 AM Alan Stern <stern@rowland.harvard.edu> wrote:
>
> These warnings seem pretty bogus.  Their meaning isn't entirely clear,
> but the statements they complain about copy a 1-byte location to a
> structure consisting of eight 1-bit fields (or the equivalent).

bit field sizes are not well-defined by the standard.

Eight 1-bit bitfields may well be an "int", with just 8 bits used (and
it might be the high 8 bits of the 'int').

The fact that you declare them with "char member:1" does *not* mean
that the bitfield is encoded in a char. It might be. Or it might not
be.

"packed" may or may not help.

The basic fact is that bitfields simply are not hugely well-specified.
They are a convenience feature, not a "this is the layout in memory"
feature.

The fix for the warning itself would probably something along the lines of this:

    --- a/drivers/usb/storage/ene_ub6250.c
    +++ b/drivers/usb/storage/ene_ub6250.c
    @@ -2400,7 +2400,6 @@ static int ene_ub6250_resume(struct
usb_interface *iface)

     static int ene_ub6250_reset_resume(struct usb_interface *iface)
     {
    -       u8 tmp = 0;
            struct us_data *us = usb_get_intfdata(iface);
            struct ene_ub6250_info *info = (struct ene_ub6250_info
*)(us->extra);

    @@ -2412,10 +2411,9 @@ static int ene_ub6250_reset_resume(struct
usb_interface *iface)
             * the device
             */
            info->Power_IsResum = true;
    -       /*info->SD_Status.Ready = 0; */
    -       info->SD_Status = *(struct SD_STATUS *)&tmp;
    -       info->MS_Status = *(struct MS_STATUS *)&tmp;
    -       info->SM_Status = *(struct SM_STATUS *)&tmp;
    +       info->SD_Status = (struct SD_STATUS) { .Ready = 0,};
    +       info->MS_Status = (struct MS_STATUS) { };
    +       info->SM_Status = (struct SM_STATUS) { };

            return 0;
     }

but the fact is, using bitfields there is simply WRONG. Because this
code that sets these fields from the hardware results:

        info->SD_Status =  *(struct SD_STATUS *) bbuf;

is fundamentally buggy. You are assuming little-endian bitfields. That
is just not well-defined.

Just don't do this. Use 'unsigned char' to specify that you want a
byte, and use actual flags values to test the bits in that byte.
Because that is actually well-defined and works.

Yes, yes, yes, you *can* use bitfields if you absolutely have to, but
then you have to sprinkle the end result with

    #if defined(__BIG_ENDIAN_BITFIELD)
    .. declare it in one order..
    #else
    .. declare it in the reverse order ..

and even then you need to just pray that the compiler packs things right.

See include/uapi/linux/cdrom.h for an example of where we do it.
Because people started using bitfields long ago, and never fixed it,
and it became part of the API interface and is even exposed to user
space. Ugh.

Please don't repeat that mistake. It's been repeated several times
because people think bitfields are convenient. And they *can* be
convenient, but only for pure software uses where the actual placement
of the bits doesn't matter.

                   Linus

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAHk-%3DwhkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ%40mail.gmail.com.
