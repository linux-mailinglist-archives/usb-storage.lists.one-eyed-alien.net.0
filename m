Return-Path: <usb-storage+bncBDVLLZN6XYMBBMUIRCXQMGQEX4KS7YA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B58786E5B5
	for <lists+usb-storage@lfdr.de>; Fri,  1 Mar 2024 17:37:08 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-68f74a0a3c7sf27075066d6.2
        for <lists+usb-storage@lfdr.de>; Fri, 01 Mar 2024 08:37:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709311027; cv=pass;
        d=google.com; s=arc-20160816;
        b=DowHjFcsR2fTxuuFIxSBhf2UcB5jMBZeAM0nOrQ8A6tvM+s89A1MzaRWTWtqQv4obK
         e8Jp+xdvXzCucgaKcwHZNvyYCvv4VB/qhjvFtc2fjGLt34vwiuSBM3uD8+FayY+ArRdZ
         TNXUGUSKx1F8oxoZiIKJIJvj8DQ++HDSHUH49P3OtBM0s4TtNBacY6y8ufYP556+7y4E
         yO4uTXSQeZqfmwqCRCoMsZ0f68jnEKgqPYUkPySRTRHydf/uh7HM9pnCxC2p6jTnch9+
         jVy4ddspCLuyQb1i20zjrVz3o/xYiILWS+YDpBJa7WRwvqB+4jidJHyYwIe/QbIHZRJZ
         c1Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=RWL06QJHeye1i70Wh2pYD9GZBrZeMthMW3eUgGynCMY=;
        fh=zjQHEvCYOdLYyz31A6sNnSi0A193b9V6UP8oWI0OGok=;
        b=ZrajJ/Uka7uk29+8z31vX2GqqLSOXn5cZ+dRsEwJD+lvK4mccllMeuDNbVinOXh6yp
         jmRUQ0kE5YpPRxy0PvSxl8w1A8F5tw9ZKftqw4fRXyEAk/8Tc6DgqEQdJZhctvfKsrRF
         gtpwEJ3GbrfQftnSWvN6qbiF3EVlW2bgaPXIzpLifXtLZhdFjtYHTenbHzqOFk1jSemi
         ODOmBZjOzeAIAjfATsrTAQzbbVc+UXECmlSLpImd8r3vuW+zNnIBZcpkTwDpNFFVsL/1
         wApT3PWEgdzccm29hZLJy/1PaoIJe9Iba2zbDSSpk/pbpfzGl9S989T+GOarfkjjKOkD
         GhqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=aFTwAQ9V;
       spf=pass (google.com: domain of prasannatsmkumar@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=prasannatsmkumar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709311027; x=1709915827; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RWL06QJHeye1i70Wh2pYD9GZBrZeMthMW3eUgGynCMY=;
        b=IktQmIYZXWlIku2U19ueVPmgMwBigB5/lMzltcNcKSWKR5MiuWYk3mHVGEssflQfxP
         AZx0yIobGdT4nvk0E1aAeUDlYXkkjjpTUyrnc9UQPz6031L761B9ehIzMZ6YHsXf3uty
         BGuJzsC862VhkivT5geY4alCE1oIIwMXn8V4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709311027; x=1709915827;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RWL06QJHeye1i70Wh2pYD9GZBrZeMthMW3eUgGynCMY=;
        b=Ctfn9iLPbgfxeeV1EWQ+ZCsXIX+EXrL27Wz7QT9RSsNbXDlE1OT6KoFkJOgEXoia8P
         KkfIRMzNLd10yFrIPFSelWM54qaYhcC9eoGU2F0UTsk6qkxOa9SS+7vksaJY94g+d16E
         l9RUfBTxxiijAkxkEOIb1Fzevl5u7izc3dPyYp/S304mDz6eS0gBh7y2aNIejkhMY0Dm
         T4jBUwh6IZHmw7D3yDpxh1CgaXwVHkxaMZHOh53iR9FVkEXVzbCNjJW1KDsCEnqVYfms
         C3rkHbaxCGT4DB+AlIRiF9YRU5GJEK2f+CsBtUHxwGYhqoR59sKi/5Nj2ePc/Yk3pPzF
         xezw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXDrHjavkjCd1i3yXEOtGIMieLDr9l7aw3Nk5CH8TgD7aDkTb2j4gti4hFho1u/KKRPeeTUdS6D88jT9WRh4uYMQOMkIdLI8cV0
X-Gm-Message-State: AOJu0YzeFqL0XIb3fTpL8E4eeumUwn6TOqHBgIeoWDq73G4Qallua3Eg
	KMiFWTIiHIey3y4O/nNHFZJAyp4Ps38VdzPIGgldFpC/Tc2qO2Xn/1PDAGB1kEI=
X-Google-Smtp-Source: AGHT+IGl6GjdPrL0vbkWCxxUCn4YNsgzz0BUKCc5ULBNoZZeWdddN0y/ZXkB/83KDXULNcSQj7W1kw==
X-Received: by 2002:a05:6214:1c6:b0:68f:e2fb:25b0 with SMTP id c6-20020a05621401c600b0068fe2fb25b0mr1942431qvt.54.1709311026923;
        Fri, 01 Mar 2024 08:37:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:301b:b0:68f:db5f:7faf with SMTP id
 ke27-20020a056214301b00b0068fdb5f7fafls2680073qvb.2.-pod-prod-07-us; Fri, 01
 Mar 2024 08:37:06 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXRIG8UrWbakYu/XxP2wF5jdmI8QQkUvc8uCqWOjk6mOFI5lH5GxBUdJTF8sSg5888QVRC9MOjZfjeUGb2E45q2l/RGFmhaSGgKlr0xyZSh6IHRK/o=
X-Received: by 2002:ad4:4022:0:b0:690:5703:adc4 with SMTP id q2-20020ad44022000000b006905703adc4mr73567qvp.0.1709311026502;
        Fri, 01 Mar 2024 08:37:06 -0800 (PST)
Received: by 2002:a05:620a:4491:b0:787:761c:7519 with SMTP id af79cd13be357-78805453743ms85a;
        Fri, 1 Mar 2024 03:37:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVQnwE4J3Yohq0Eu3sfGKZE/JWIQjAIYSEsit7mBZk69KtjIL5tUNBnxGp+7yyy+Ok65vDGKrt1V4DepU8Sd0T33xq2A3AT7fQ6oqyfwfccfxdBZRs=
X-Received: by 2002:a17:906:361b:b0:a43:e812:fbcd with SMTP id q27-20020a170906361b00b00a43e812fbcdmr1159448ejb.28.1709293028077;
        Fri, 01 Mar 2024 03:37:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709293028; cv=none;
        d=google.com; s=arc-20160816;
        b=doquHTVJLpJCbHAjtjUsgDxAWc2ZabgyMF5d35CIvgAuOQGmxHZy6QMr9Tm4Pfte8k
         sto2RgSh+VH0oVI7FNrB3NCqEBRpwyxymyGnGQ7PC8vIMfpNFgilJSPAdWStaOLmlSwi
         2l881m6iOtKb/azfZ7JqWEC9xSuK1Bg+GENZIhlbyWUD4YCJfHvprDTfeyYtJynHfQoa
         eISmYO04DgPLcSrpUIZtMMGf5HbhbMA2ZAqgapUNT63TFh2fgdHkNyy7CNQTBRXWVJJ/
         +ZFTWs2UYvHnWIh2mOx1P8ukDED/RYk4ZTV8xQbPEyG68Jvhok55ZpCNv0qZIy7BvjB1
         ilUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cm0fewRk8by9EwZ8NHHrfR7IDUJrVmcr62BhebkMa2c=;
        fh=1Tw6z+01WLfMV0o3vrx868PqIZ+K+8CmvfkCduekwtM=;
        b=Kbb7TZYa/9ZXirm6SZKaV8jRF3Pji6uKJOhyHxxgxH1q5W/QSF7TJo8MeBYnnj5aIf
         vIrkAGDGsN71UZo1SnQuWNs6jwTz0SfQuJ7OA/dV4uirt3W/ycZrmDektpOp+Bn6i8Zo
         PCVKr3fGeZnIu3Y4d7rzyMsYcXYUSqbE+9NKNogX6AUeEa71mgO6AIZrlAuX10C7oMlA
         6Wjqov+AFGZzMicbpNOouScj/U0vfBcz2pL/hjGcVegjLOMl+tRCm/AXZFbaOzFkZdq6
         tFzmvgTPciA66hpCZhSd3kuy0Nk7yjRPKVMR+hxoUb3icpxmW+AH0aRqiz/gzpMVF477
         Y/Mw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=aFTwAQ9V;
       spf=pass (google.com: domain of prasannatsmkumar@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=prasannatsmkumar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p25-20020a170906229900b00a43eedb6c5bsor1440631eja.3.2024.03.01.03.37.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 01 Mar 2024 03:37:08 -0800 (PST)
Received-SPF: pass (google.com: domain of prasannatsmkumar@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCX8vjN7LfC87yMfKQJMPw8Ry96XQ0p7Uu4woJz1w39O3ua8Cz51UYOMOaBIiBgxZYLBE5yd9MDX5c8U9a7UjCU7KbHArrmq71nycJfpXeo4CmITCxU=
X-Received: by 2002:a17:906:135b:b0:a44:74f6:a004 with SMTP id
 x27-20020a170906135b00b00a4474f6a004mr1057238ejb.26.1709293027326; Fri, 01
 Mar 2024 03:37:07 -0800 (PST)
MIME-Version: 1.0
References: <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
 <000000000000102fe606127a67f6@google.com> <b1e605ea-333f-4ac0-9511-da04f411763e@rowland.harvard.edu>
In-Reply-To: <b1e605ea-333f-4ac0-9511-da04f411763e@rowland.harvard.edu>
From: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Date: Fri, 1 Mar 2024 17:06:56 +0530
Message-ID: <CANc+2y6FAoUR7R_N-3aLB72DBN98gx82vLMAKXRSCtCQ8PoJEQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] USB: usb-storage: Prevent divide-by-0 error
 in isd200_ata_command
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>, bvanassche@acm.org, 
	emilne@redhat.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, nogikh@google.com, 
	syzkaller-bugs@googlegroups.com, tasos@tasossah.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: prasannatsmkumar@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=aFTwAQ9V;       spf=pass
 (google.com: domain of prasannatsmkumar@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=prasannatsmkumar@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, 1 Mar 2024 at 01:00, Alan Stern <stern@rowland.harvard.edu> wrote:
>
> The isd200 sub-driver in usb-storage uses the HEADS and SECTORS values
> in the ATA ID information to calculate cylinder and head values when
> creating a CDB for READ or WRITE commands.  The calculation involves
> division and modulus operations, which will cause a crash if either of
> these values is 0.  While this never happens with a genuine device, it
> could happen with a flawed or subversive emulation, as reported by the
> syzbot fuzzer.
>
> Protect against this possibility by refusing to bind to the device if
> either the ATA_ID_HEADS or ATA_ID_SECTORS value in the device's ID
> information is 0.  This requires isd200_Initialization() to return a
> negative error code when initialization fails; currently it always
> returns 0 (even when there is an error).
>
> Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
> Reported-and-tested-by: syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com
> Link: https://lore.kernel.org/linux-usb/0000000000003eb868061245ba7f@google.com/
> Fixes: 1da177e4c3f4 ("v2.6.12-rc2")
> Cc: <stable@vger.kernel.org>
>
> ---
>
>  drivers/usb/storage/isd200.c |   23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
>
> Index: usb-devel/drivers/usb/storage/isd200.c
> ===================================================================
> --- usb-devel.orig/drivers/usb/storage/isd200.c
> +++ usb-devel/drivers/usb/storage/isd200.c
> @@ -1105,7 +1105,7 @@ static void isd200_dump_driveid(struct u
>  static int isd200_get_inquiry_data( struct us_data *us )
>  {
>         struct isd200_info *info = (struct isd200_info *)us->extra;
> -       int retStatus = ISD200_GOOD;
> +       int retStatus;
>         u16 *id = info->id;
>
>         usb_stor_dbg(us, "Entering isd200_get_inquiry_data\n");
> @@ -1137,6 +1137,13 @@ static int isd200_get_inquiry_data( stru
>                                 isd200_fix_driveid(id);
>                                 isd200_dump_driveid(us, id);
>
> +                               /* Prevent division by 0 in isd200_scsi_to_ata() */
> +                               if (id[ATA_ID_HEADS] == 0 || id[ATA_ID_SECTORS] == 0) {
> +                                       usb_stor_dbg(us, "   Invalid ATA Identify data\n");
> +                                       retStatus = ISD200_ERROR;
> +                                       goto Done;
> +                               }
> +
>                                 memset(&info->InquiryData, 0, sizeof(info->InquiryData));
>
>                                 /* Standard IDE interface only supports disks */
> @@ -1202,6 +1209,7 @@ static int isd200_get_inquiry_data( stru
>                 }
>         }
>
> + Done:
>         usb_stor_dbg(us, "Leaving isd200_get_inquiry_data %08X\n", retStatus);
>
>         return(retStatus);
> @@ -1481,22 +1489,27 @@ static int isd200_init_info(struct us_da
>
>  static int isd200_Initialization(struct us_data *us)
>  {
> +       int rc = 0;
> +
>         usb_stor_dbg(us, "ISD200 Initialization...\n");
>
>         /* Initialize ISD200 info struct */
>
> -       if (isd200_init_info(us) == ISD200_ERROR) {
> +       if (isd200_init_info(us) < 0) {
>                 usb_stor_dbg(us, "ERROR Initializing ISD200 Info struct\n");
> +               rc = -ENOMEM;
>         } else {
>                 /* Get device specific data */
>
> -               if (isd200_get_inquiry_data(us) != ISD200_GOOD)
> +               if (isd200_get_inquiry_data(us) != ISD200_GOOD) {
>                         usb_stor_dbg(us, "ISD200 Initialization Failure\n");
> -               else
> +                       rc = -EINVAL;
> +               } else {
>                         usb_stor_dbg(us, "ISD200 Initialization complete\n");
> +               }
>         }
>
> -       return 0;
> +       return rc;
>  }
>
>
>

Looks good to me.

Reviewed-by: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>

Regards,
PrasannaKumar

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANc%2B2y6FAoUR7R_N-3aLB72DBN98gx82vLMAKXRSCtCQ8PoJEQ%40mail.gmail.com.
