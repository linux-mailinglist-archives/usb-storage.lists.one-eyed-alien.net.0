Return-Path: <usb-storage+bncBD6LRVPZ6YGRBUUUZ2IQMGQEA24EAUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 145BD4DCEB8
	for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 20:21:56 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id m21-20020ac86895000000b002e1f19fae99sf1772641qtq.18
        for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 12:21:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647544915; cv=pass;
        d=google.com; s=arc-20160816;
        b=jzrPJI7BdADQehuUNBYohgQxbPv8aiZNPduNG3TZ8nT+pFFlt2G3UjjnjRHxTkIJ4g
         hCjAI8MBDaeGTBlxqdAo4ZHeh6XvMjO7utcZiQLOKDVa0fj3Yazo2OGSRYvlto9aXMo1
         xT0xdIgsI6reIYonUBuvkBJgBxebIWpDtEg1D1tEPIwlIOk2IUuTEBFSuki0tBDaokO3
         HsqDbL9S6qHFFVwkPi5u7j0W0ZwW7Fru1U55QLuNY/SSMzo4LEpEmmgWxwVelxAzCRyK
         KV5zfwQ9LUmxP7G54YzorTcCnZ99CywhgTnlQBy8kXasFxn1A8mfBQ2omjb9rQ1c8U+9
         TdKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8PzfTXnaopWpptzVk4NFrrND0pr1vVGpS2TWKhsqonc=;
        b=eK/be6LzXElINCgv72mxL8ssH/HUEpDhAZ26lTSxDTIhnrKMTpkXOE2pwmul4HkF+b
         vMVkJ7BEzvOdl222J6k+cGVdROAXedZh4bLcxqV0CKqc4DBSSHlcFUHp5ny8V1dC3/Ow
         dJz0CLAcoNxk4/EjW3bYM13N6QQJq9c80HZ0OERTxNRTQoFT7nONLS6E5JtzV9lA2sBo
         R1YqMnQNB5PeNzlUtH2beL5C4dovXSVSVckSWfddJ2vrV39Lt/4LPKwRifjAkOOY9RUM
         wEE8Pe2oIrUohoNhasf5rDSIBPc1/vabA1OOR3k5cDuxNAaK81iw5dV5cGRXB9IUeK3E
         D3bg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8PzfTXnaopWpptzVk4NFrrND0pr1vVGpS2TWKhsqonc=;
        b=Nlh48WXSRIDTD8ltOXUOYu+XSiYoYWNdTlV3eCV+4wnmaddRF21CycMhOfwjYsMIk1
         a0hrBy9FBVrStwZ9k7vOMEAFp7lGauGuMuI4l5CKXlznchSElhQodbFsgOCe5BgnQAIw
         c35p97OtKPoRcnPP6eFO7xE/+BQFqHM89f8Ug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8PzfTXnaopWpptzVk4NFrrND0pr1vVGpS2TWKhsqonc=;
        b=Cn41JyBqhY+VGZWY4dggzNOvgCct9ZGVseKSiCo9iSxj1sZ+QlTUg8QkTrMXYMIV5t
         Jpu/6oh7/Ic3I2q8bZ0tI05v5DX75uQp5Y/LReXCV4+QCk4RvoNNLQB/wexggkWIucUG
         IN/8VaJz98byUYvjwa039m+v3LNCk4RIqRHYXO9vyl/ElHAMtGhxPdtt2FAZwDjEuoQk
         24k26grvkwd7A2blQaYpuJjcX30wWl8siG+y/uJR1rSez/ZpLuYCkUZehhuqj9+woupV
         NblLCbw8HlihWZthqhlIIKpHuxaXW6wueJkhCiCHKEdvTpTWgQbOgpEPlUeMXkYZLonC
         ENvw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532x8QmB4qfnmAd2dGvllG7cNbX/cOJnXgajh1XrhvZclDPaVO4m
	CTcW3FTNPHvlbIsTG2tMEpogMA==
X-Google-Smtp-Source: ABdhPJzVslp/gGu7gjQzO+914Fky0Jh9Y0GVh3Wz1dubKjrbNSAMPESYi0uxeTxGwmRcDTe6zlx3WA==
X-Received: by 2002:a05:622a:1747:b0:2e1:e5dc:e75b with SMTP id l7-20020a05622a174700b002e1e5dce75bmr4981387qtk.13.1647544914934;
        Thu, 17 Mar 2022 12:21:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:252d:b0:440:f64e:ceb9 with SMTP id
 gg13-20020a056214252d00b00440f64eceb9ls591537qvb.1.gmail; Thu, 17 Mar 2022
 12:21:54 -0700 (PDT)
X-Received: by 2002:a05:6214:2608:b0:440:f018:5e1e with SMTP id gu8-20020a056214260800b00440f0185e1emr2753820qvb.40.1647544914470;
        Thu, 17 Mar 2022 12:21:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647544914; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxDJf2JBQ48fEGDwecoUs1p3+pIehsMeqW1EPWrJZKhCBl3k7M6CIXkseJ/sXO/cIn
         ZteedWVA/X4hhW059uwd7U0JkN0LlA6yXWx0gxZN9J5OVpzWwQO5PbX82U1yjxZk6uiq
         Kbo0gqxYpxP4ppj6To6KDNCBHzXkB2dkAkZvnaOf9J2GB/7MkQ1NBCbkJp46COLidRxS
         mA02nWbvKEkT17IZKlASsxtl39hzVB0ToZmnKhcNqjvWKmzj3KfeFe3Vqzrx29M+hG1e
         HW0zmoqlRdSVu+N7mfJzhEwhV2tFdKDly8q52flrs1guiBcOSzdipHCKVE3CoXG8yJZS
         fIlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=9AOFwcewsycz95XpIajvdeEALoQ5ujRx4egl2bGhDzM=;
        b=RLgIYd/tkEfDWP4UPpbuWHcs6442bB6JoAKW85H09ltN8P8XEwqfQwnItpWoeIhfju
         7eC990yEfK3BmNrjlZPBlrHJWpqMAkjV0DpTIT55yNE2ZykyrH3riGcUhgc6f0tqJVzF
         mXNn1aFEyidb/bxUKnVFaFUBO8u/D6pBXuyhNd3iWZ949NP+6d8W4CDJ4ZAvEJrQsZ3T
         xPN8rLrotJPAuH/mId9bkjj0wCf+ooL1n9uJFyQl0lz1NxmfBIv2m5J0m/YA8CW/qD1p
         gPr1FIEKhZEzShc+xGRp2efgScNXZhPeCPUSnrQGvkDqflOO/warGrghWZHM8GmqNX/z
         +P2Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id k138-20020a37a190000000b0067dfc96ac33si1562264qke.105.2022.03.17.12.21.54
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 17 Mar 2022 12:21:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 7452 invoked by uid 1000); 17 Mar 2022 15:21:53 -0400
Date: Thu, 17 Mar 2022 15:21:53 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: kernel test robot <lkp@intel.com>,
  Andrew Morton <akpm@linux-foundation.org>,
  USB mailing list <linux-usb@vger.kernel.org>,
  USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [linux-next:master] BUILD REGRESSION 8a11187eb62b8b910d2c5484e1f5d160e8b11eb4
Message-ID: <YjOKUZ4nxs8EGg8p@rowland.harvard.edu>
References: <6232d299.9omOW8g6S6l31UFc%lkp@intel.com>
 <YjNfHsqfjPqBMejZ@rowland.harvard.edu>
 <CAHk-=whkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whkHmpA2FM6Ve8bUu7hcyWBLznQU8RJzOdpfa-0EVPCpQ@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
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

On Thu, Mar 17, 2022 at 12:11:59PM -0700, Linus Torvalds wrote:
> On Thu, Mar 17, 2022 at 9:17 AM Alan Stern <stern@rowland.harvard.edu> wrote:
> >
> > These warnings seem pretty bogus.  Their meaning isn't entirely clear,
> > but the statements they complain about copy a 1-byte location to a
> > structure consisting of eight 1-bit fields (or the equivalent).
> 
> bit field sizes are not well-defined by the standard.
> 
> Eight 1-bit bitfields may well be an "int", with just 8 bits used (and
> it might be the high 8 bits of the 'int').
> 
> The fact that you declare them with "char member:1" does *not* mean
> that the bitfield is encoded in a char. It might be. Or it might not
> be.
> 
> "packed" may or may not help.
> 
> The basic fact is that bitfields simply are not hugely well-specified.
> They are a convenience feature, not a "this is the layout in memory"
> feature.
> 
> The fix for the warning itself would probably something along the lines of this:
> 
>     --- a/drivers/usb/storage/ene_ub6250.c
>     +++ b/drivers/usb/storage/ene_ub6250.c
>     @@ -2400,7 +2400,6 @@ static int ene_ub6250_resume(struct
> usb_interface *iface)
> 
>      static int ene_ub6250_reset_resume(struct usb_interface *iface)
>      {
>     -       u8 tmp = 0;
>             struct us_data *us = usb_get_intfdata(iface);
>             struct ene_ub6250_info *info = (struct ene_ub6250_info
> *)(us->extra);
> 
>     @@ -2412,10 +2411,9 @@ static int ene_ub6250_reset_resume(struct
> usb_interface *iface)
>              * the device
>              */
>             info->Power_IsResum = true;
>     -       /*info->SD_Status.Ready = 0; */
>     -       info->SD_Status = *(struct SD_STATUS *)&tmp;
>     -       info->MS_Status = *(struct MS_STATUS *)&tmp;
>     -       info->SM_Status = *(struct SM_STATUS *)&tmp;
>     +       info->SD_Status = (struct SD_STATUS) { .Ready = 0,};
>     +       info->MS_Status = (struct MS_STATUS) { };
>     +       info->SM_Status = (struct SM_STATUS) { };
> 
>             return 0;
>      }
> 
> but the fact is, using bitfields there is simply WRONG. Because this
> code that sets these fields from the hardware results:
> 
>         info->SD_Status =  *(struct SD_STATUS *) bbuf;
> 
> is fundamentally buggy. You are assuming little-endian bitfields. That
> is just not well-defined.
> 
> Just don't do this. Use 'unsigned char' to specify that you want a
> byte, and use actual flags values to test the bits in that byte.
> Because that is actually well-defined and works.

Got it.  Thanks for the advice; I'll create a suitable patch.

Alan Stern

(PS: Sorry about the messed up email address in the CC: list.  I must 
have left out the <> characters when typing it in by hand.)

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YjOKUZ4nxs8EGg8p%40rowland.harvard.edu.
