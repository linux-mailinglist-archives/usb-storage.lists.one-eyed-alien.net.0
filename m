Return-Path: <usb-storage+bncBCUJ7YGL3QFBB7ESWPBQMGQEU3JOS5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFBFAFC41A
	for <lists+usb-storage@lfdr.de>; Tue,  8 Jul 2025 09:32:14 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id af79cd13be357-7d444d21b24sf656867585a.1
        for <lists+usb-storage@lfdr.de>; Tue, 08 Jul 2025 00:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751959933; cv=pass;
        d=google.com; s=arc-20240605;
        b=kH0Qz31e/KYIEP/XadN6p02lRhbXI8PF9I2Jv9B5EAGGDn49b0/+dm1/WuCZGhMgbb
         6qvdcobe1fJveOp5TM+tCkF+2p4REJsU0tv7IsNxQoOUhbrjJwoI+YdH6YEQR2bQkuF3
         qcej5qceMlvrQtHaCK51izFfo4oesNY6VF5+iCHYo5jRzdeTzUIHIIJlqgDk4TtPhTIu
         c1TkSoF/zU/ZFNnubcFbzqPmpnxNI9J4LXnYz0RVEQ+x2qdBKs3guVa/XeCmueIfDtLz
         UJ5IxpUsyWI/K59PPSttbtTugNKQrY3SRGBQ8mqj+qFPk/gJTojjAfDClADqz/sWtvY6
         xMSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=518CHlUN6ANSQ9zIen739FKyWZ8H2FDDk2w29q009vo=;
        fh=0jpPMynQGe9nmC6GGPGwvThi1WJpMUZpSS7brouaYFQ=;
        b=Ce+metmPF/ysrLD7WN65SOpntUE2su2RlIrO86lK4gWDjy6vU+N1BFP7gR6hkF5ACo
         j8X/P2/3kYWiZcj8Tz8uGhaTvN7wWtpWWWV7M21NqJPNP3QcXuTULHhZNEoWvGKL0Px9
         yqmax4XfJ8Dpt1HodURLntafnyEeWWeVHKCO0A99CfRNms3sAKlIr3tbRc9v5qrSMw/k
         hkg7p/57MdJJSAStj0wKg1EIesvZ8X2v85RbR2SXPiGMaVQasVHa+b+zeaQoxcXj6PWt
         eiQ9QvN2oiRVTDEdldKw+jWxdb+z6Kkzo+Ok0vJsEHA6XHWeX9xd9cjwdgVen4cVfoJi
         9t9g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FCnyRBY1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751959933; x=1752564733; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=518CHlUN6ANSQ9zIen739FKyWZ8H2FDDk2w29q009vo=;
        b=iUgfyxEnGqw5vS1CgVrR9T5rNl+MKSFDpS2xMAafe+XcvNM2i9qDepbh/s1mSoUDhf
         u1YEjPO7GU1GfQ8dZYWyN7wBbyEbu/icdww0zyn1Im2xlrdYwmQNkprqAY/5Lfx+74/j
         unKQPil5hpgsoUbJzECwiBnzMhnicWRoyIkhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751959933; x=1752564733;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=518CHlUN6ANSQ9zIen739FKyWZ8H2FDDk2w29q009vo=;
        b=X+ckmv5GaLjUuWaK4fSwswwRRL+slh3TbM6Np7Nm8V/H4L7XraoCWWs8ZaWH0mvCA1
         JwS6msfDWsVOJpOfdPVgvcRa8FcCK8ZKAFUlIBI/WQlEOzmF0qSJWXgjkQ7HumrbqHUF
         hfrTTnalI2WXEiIdgGPqcO5QCgVcFjBoqyf60VoUKmnkVKhx9FNXAI9wA3xklks8YgdO
         nYME4lunIXEsvQnmHPVjSmgbfqGKVC0jGgWma/JB/e23aM3EAw/vlIJmCI3+1HfZcw+2
         hkrUliu7CmuGLgfvERbS52h2IyRyUnx1CCTcBSHKxktnZ/7dC83Kkwe2EmREshX0+f0x
         9N/w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUKZPBiYmrO3xsHnIfyyIN5fMF4y/n8X4v4DqxkfqUb8XbZfrSAMNJYR31sFk7Z/RBPRmBJOQ==@lfdr.de
X-Gm-Message-State: AOJu0YwjlPRzc//b05FSzFmmYXavQSiRPVYiYMlsNNlA0lqcVZnitqgt
	5hyYgzyov1J80zxuBOJGrL2YzKhF5HmSUVcLjHaDsgRMfvxzG95jkL4Ap+ALmU1F3XE=
X-Google-Smtp-Source: AGHT+IGmGwXaSW1SA2chfoN8tLTWdVMynscxp0KBclXU0oct39iLnkUgPY2Ab8t65lVse4tmvajusg==
X-Received: by 2002:a05:620a:4089:b0:7d3:8f51:a5a5 with SMTP id af79cd13be357-7da04137a83mr274990985a.51.1751959932745;
        Tue, 08 Jul 2025 00:32:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZeV0m61Ll02DP4zgE1K5pPMaWz3Hpj4IKL8GukVwkDimA==
Received: by 2002:a05:6214:21a6:b0:6fa:bb85:f1b9 with SMTP id
 6a1803df08f44-702c9d229ffls58037566d6.2.-pod-prod-03-us; Tue, 08 Jul 2025
 00:32:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVpblmHhqth+vcyMRabWVadxpdoiYumN71ZZegjpIzx459KhHAFqYICkFDu7V/ZMqeG7GMsnSzVlVXK0g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:700a:b0:7d4:5439:daf with SMTP id af79cd13be357-7da03599fc0mr253181185a.33.1751959931467;
        Tue, 08 Jul 2025 00:32:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751959931; cv=none;
        d=google.com; s=arc-20240605;
        b=ULmZ6I+qTq0ans1OMQfwSG40ToO/E7AKUE7a0+HwUGVvaRT+A9pVSKLDNLljCHYWLB
         qLeMijIK+y7vE+M5JILRdDCngAgzs4+s2t1a0YK1Fs4lmBhEOwnCO+eW2ElFdJrEk9aq
         92jJuYvolnAni9uqU6tQrmre2WT2qBgQz2TrDT3h37xY7qjiwBMcZCi44zEgM+aGw+rS
         EgeQn8MtRziXN6TaaXqDCBboPOt19+IvuxJlDFMaA/jgfOTnxqiiybm7cvQ1+NxhGHWc
         7QHLpbhoNQ/QlC5Jp5rCPovzD2JOw6ur4kuuExma8EEAWOtXkndFnE84hVUX15gAHIqu
         ezag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=sd20NXx8bSH1ozXbC77jWWLBqiTAlcydgxr6y7JRIAU=;
        fh=a1YKTi9pHnywQ2XBEVGe7xjTioXL4dc+m9vRhIedUME=;
        b=XsxoVDP0adIfoCuWmM73hKx3YeW5O2ahlzSOdSF4buX7SiOURaqvr/Wd/0vhVBldUm
         rFVZt3xdv+yosBB7pS1gicz5aleGt6JpCXyHlMnHH7ji4WVfs50MO5sRDiG2urelcGjs
         TsN3+XwKAsT9qqRxKeFGmFV1riW5yS6kFDkG4Pi/TFbQ00/ulgRIFmLxu3gRwpgRnd0g
         /gDJLvDReFd+sXL43FE8g2Yiy/JI4oitkOF3+v5PqFdyjQTOsy1DjXG/f/iNWVSFn+Y1
         DOcUNg7OBX9bbQkVlDWUedDugJtKO83Y3zG0Id782QJ154566H6hSRoHWqc2QKzML+h9
         AINA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FCnyRBY1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id af79cd13be357-7d5dbdc9c0dsi1009476985a.37.2025.07.08.00.32.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 00:32:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3124EA5318D;
	Tue,  8 Jul 2025 07:32:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 879E4C4CEED;
	Tue,  8 Jul 2025 07:32:10 +0000 (UTC)
Date: Tue, 8 Jul 2025 09:32:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
Message-ID: <2025070830-edge-deprive-ce6b@gregkh>
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070725-circle-recite-bc04@gregkh>
 <2c4af4f8-5763-4ebf-8070-c7eabf43fe5e@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2c4af4f8-5763-4ebf-8070-c7eabf43fe5e@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=FCnyRBY1;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Jul 07, 2025 at 05:52:31PM +0800, Jie Deng wrote:
>=20
> =E5=9C=A8 2025/7/7 16:47, Greg KH =E5=86=99=E9=81=93:
> >   =E3=80=80> So ignore UAS driver for this device.
> > > > Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
> > > ---
> > > v2:
> > > 	* According to the file modification rules (sort by VendorID > =09
> > first, then by ProductID.) Add the newly added "UNUSUAL_DEV" > 	  in th=
e
> > correct position.
> > > v1:
> > > 	* The newly added "UNUSUAL_DEV" was directly added to the end > =09
> > without modifying the format according to the file.
> > > > ---
> > >  drivers/usb/storage/unusual_uas.h | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > > diff --git a/drivers/usb/storage/unusual_uas.h
> > b/drivers/usb/storage/unusual_uas.h
> > > index 1477e31d7763..6b1a08e2e724 100644
> > > --- a/drivers/usb/storage/unusual_uas.h
> > > +++ b/drivers/usb/storage/unusual_uas.h
> > > @@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
> > >  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > >  		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
> > >  > +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
> > > +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
> > > +		"SanDisk",
> > > +		"Extreme Pro 55AF",
> > > +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > > +		US_FL_IGNORE_UAS),
> > > +
> > >  /* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
> > >  UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
> > >  		"SanDisk",
> > > -- > 2.25.1
> >=20
> > Why is there two "v2" patches sent here?  Shouldn't this be "v3"?
> >=20
> > confused,
> >=20
> > greg k-h =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =
=E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80=E3=80=80
> >=20
> The first sent V2 patch was missing the description of the
> differences between V1 and V2 patches. The V2 patch sent for
> the second time only adds a description of the differences
> from the V1 patch compared to the V2 patch sent for the first time.
> There is no modification to the code. So it is rashly believed
> that it does not need to be defined as a V3 patch.
>=20

Think about what you would do if you got sent 2 "v2" patches?  :)

Remember, some of us get hundreds/thousands of emails to handle a day,
please make it very obvious what to do here.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/2025070830-edge-deprive-ce6b%40gregkh.
