Return-Path: <usb-storage+bncBD6LRVPZ6YGRBUWRSCYAMGQENKSTXTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C7B88E4AF
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 15:10:28 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-696b341e639sf1577136d6.3
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 07:10:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711548627; cv=pass;
        d=google.com; s=arc-20160816;
        b=rSGAU1sTMnIfQ5bJQ2JyNRCzXh4Ac6FzzDWWzRbsVnxtx+OjkZGqsaSe0byHcWOHNX
         dfMw2MMzJEPUDm0QptfLL4KMQB4INp4ciAtkJ3Gz60/vkag0u9X8XudzZf8iaqK74sw5
         E65Z2hH7s5BhlCxCaJgRSM84e56WVGyMp92nls/XjKAitRYgbr4RvYjmaXAFgx6l2tIf
         FjMAoavDDFnPwOppZuS9gvklfKTdhi0EVytgh9sQDDgu94QiwmUM2VHv1ukeNtOTXSx7
         gr/hCL49B92Nimvvy/buWIDHqHPpczKEM4fbhTj/w4caySCAdAyrc9u69meRX7iB0V1Y
         PALg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/PpxBFziytyQzFgENtPhir9sPU/jlxINz3sT+UjlUks=;
        fh=z2VPubk2VgJjDmJETjDTKI2qWyoKq+xGyKyELI0sLVU=;
        b=I5xnYoQumRi/84ATOcJimcxtMYhR+HJfDi5/yb30ub/0Z4W7kgEkSs0e5cdib1caQy
         yuE8j6HSlNzd3/GokiSMNKUSz72AjLTmU1xz/yiaZYApk5fQjOlXBoOK2doeg32kckN9
         o9arPkYlfUZEdFII3fwhs+swxOt+lJLfyeCC5UsMXqMRoxwv6nS+XhCuykKWjAaikHGS
         +TscRVBvMrA8PSKo0kZQbQbWE3cDgBuvo+UU7yQfGCwvCSbBSyec9OUV/3U3/1WYQwNT
         1krCSNfIcUlJPJ2V7UOOt5mkvVhBPM52onkpXNSjlVm3I3TL1FCIoGVTIwpiiVDl6Ef7
         PvaA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711548627; x=1712153427; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/PpxBFziytyQzFgENtPhir9sPU/jlxINz3sT+UjlUks=;
        b=afcJPzCv60urA1j4bBCVwLazbtVRMw4iK43DMeGAvqbOfujo828tQpKelae/x49t5r
         zmd0m9mcOrPA/+htPOH74hAPkK6+W/Dw86FcaUZ7wKMh/SHf64XVWzaUI3MVytsAu9Lu
         ayhbqVo0iTZOxyNiowaLc2qI+hqSSYPWPEJzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711548627; x=1712153427;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/PpxBFziytyQzFgENtPhir9sPU/jlxINz3sT+UjlUks=;
        b=cEN/7gbfMU0gAKRpPrCzc/loMQlE0f66eS7lmLx2KahiwREYSjV3Cq6vWYocG+gAME
         8jay/87Nld/fQ8e55YcL4oYTj+4P5x4abqYSHmRvSka+GCMj+AYH8DmJqnxMcPXxgCEA
         dmdUKB20TRnOfIWAW/w6ZiEeH2CB0NuZbIK16KjmQecd6RRhMc85Z2JPeg6DtZLR/CJL
         hatSrOIHWOoKgeZRjvDiluNEa1rKpE0raBtPYwbt7Cx6ADucElv8A5L1oPATD5cJV3K5
         //hKTqomqppxfbELOG+G2hcyLcYoLPwUoZF0Ht8GoLPWC9SG3ljGFwg3iRQaxZMBLa+q
         kvwQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWQKvyErVV3uM2vfmN9oJmAMHwOgsw1nxdXKnclM+Zot6it7UBX3JaEa5hwr+6TwW+9+G2oWbCTlXymG8/XBx+forpdyal/5vmr
X-Gm-Message-State: AOJu0YypIet4pae1knAHwCGrNMCR2aVukBjir2sZzVyNQDF+CsQ4sNa+
	AK1AQAuQR/OCKMEsKjRR1pkrEtEG8GHGHwtTi6TM9w5mXNGwQmDEkCOIwLPpHoA=
X-Google-Smtp-Source: AGHT+IG4v4zeWA2Lu24prqgRJeFxQCIOeClPl4E0m6zxvW47PPaa2pTlQjlxamLelnsb/4XKXBCE5g==
X-Received: by 2002:a05:6214:4107:b0:696:afac:9659 with SMTP id kc7-20020a056214410700b00696afac9659mr1349043qvb.63.1711548627070;
        Wed, 27 Mar 2024 07:10:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2425:b0:696:9623:7249 with SMTP id
 gy5-20020a056214242500b0069696237249ls2915699qvb.2.-pod-prod-04-us; Wed, 27
 Mar 2024 07:10:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWC9AwzvkvZTAJK6Map+NvOvkQOX+yFLXqjgh9Ad1XPJrVhCOdqqVRtYKSyglbrX//XUEv2S7CMe5qKKgbWHSQ+wzSMsfagcku+qT/fwjsz6FIpgpw=
X-Received: by 2002:ad4:5dcc:0:b0:696:b095:c429 with SMTP id m12-20020ad45dcc000000b00696b095c429mr1122322qvh.40.1711548626129;
        Wed, 27 Mar 2024 07:10:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711548626; cv=none;
        d=google.com; s=arc-20160816;
        b=Bj+ehB4nzLtMPql0xOjgRMSz/henculHQaZEfDobF1HHa0nssoFB/GNpmo8PxYEp2P
         P7n/RUzzUpiH6eukHYZhy2EFAECwjLVor03jzV8lTEDKfeV6aRy/1MDGpx8KiAGSQ/tT
         Ce1HlS2oePLdKrlwqO3J8a3eO600UeeTArQiA29bmbySi0ZVFtE0rrW9bt64PIwJcxA/
         r+c3cRpu6ihfWnr8IKMY7Hc9e6kdgwLHWvRTojp/8z3ZHqhePVoNxCO6mAgIl6BUkC20
         Fm+WcebETc0FqhIUpv8kDA6m9mt3e24TBnpca/+3KMV+g3UPOPr2XoC0qzIIXMT1sJJT
         +GTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=1aPizB982gPdQOZuvTieUnxfnfhAfZhPTIgVFH6+2WM=;
        fh=NJ83p9IPUuekDOZJkQQc54YQvJMvWb5A+kxF5vURf4o=;
        b=r7Z4MLaE3QCEKZMwSRTwFca8xG+ftLC9G9SlqxBmT0+Dx3dmbMGj16UvsBC+rQEi8s
         eCR6CsaBnmsUKe1SWvP/Cgwf7D+ZaSzihpDyhzn6kC9q1OXgUEDpIbWCIrIPUu/ttZo0
         RAflIZsYtwFbz4weE/iKY76YlH+nwh1ZtGI5MjuEyiok4hUt4NpMjqUjjtg9f+NfzmIK
         7Y6AuYOBrNfdcxpOX9oPaGDCYblmaOPAJqqElPDozAR3EMhorBDX2U1HGC8jfF6VrQB3
         RQ4AUBDTmMHLAgb9bKj5yN+Ai7KKOEcMgYAlF5zM8nDfwQNfqUWqKiIJdY105y267KkF
         plKw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id q8-20020ad45ca8000000b0068cbacd748fsi12890669qvh.520.2024.03.27.07.10.26
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 27 Mar 2024 07:10:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 926866 invoked by uid 1000); 27 Mar 2024 10:10:25 -0400
Date: Wed, 27 Mar 2024 10:10:25 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Norihiko Hama <norihiko.hama@alpsalpine.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
Message-ID: <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
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

On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
> >
> > I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
> 1 second does not meet with performance requirement.
> I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
> Do you have any other better solution?

Can you accomplish what you want with a quirk flag?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a446cdf4-3a9b-43d8-b22b-78c20cce2b4f%40rowland.harvard.edu.
