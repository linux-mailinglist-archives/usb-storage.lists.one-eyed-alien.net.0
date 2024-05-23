Return-Path: <usb-storage+bncBC5J7HGFV4DBBEF2XWZAMGQE7JP5RDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D9A8CD6CB
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 17:13:22 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-24c573d6072sf1056771fac.1
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 08:13:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716477201; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8W+grf1PE0fh5cZlbpLLdSpl5OmejWqYbGvZEP/PZtFg49om2tX1Nd62qBxdOHxiN
         1L2FQd9m9IltRc6Poy7yRpm9O5wgRucoULlTpCNCEVJRn9IXvIW8JL7lot6itkzIqgJw
         EEDMsfJqPjKrCJzww6V5emyj5FZ9cXIfV+Cu0qnEs/+JUDJICKRy9UQdDMeCQ6rW5rbN
         Qafz6BebhPYZm8wO8Q+d6T0nlMkQuqFlBkEbg9RgTD4KpunG+mDgCB6LLoz2L0RJY0BM
         k4leNtmI4JVxABjzJQMXQ+a1N7aPO3BFRFHKwiV5z8tcncMs3/KPEhcmtWFU0gPSQ862
         xPBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=SFcopwR5pvGFC5WIsttp1npa3vl8Z8DGXI4l+MvXkfI=;
        fh=C0nt5qmM39Vv4fJv+leiXiyeDBJLhKbCv0l2eoz6KVw=;
        b=m0eyJ/vgCrM5R4PKINWm6VwBwXO29p6kYQV7BI3+AYopBK54VzSGhT6OhTTv827czn
         cqjx9ovrMASVh/iiicynPMRFRucnTkPHeChfrLlNAv+x/XdN2qAz/ywuf5oH02HeXEDj
         lydpYVrYQ9OlTgYiE5diXd/cHKMk0jCaobgGnGTf+q40VFeXDuRcb7YZWCiR20/LNewF
         tRqKXugbm/duDcMkO+f8c8sQMaS7MWYCR3bOwku9HtcNr5bZ5GeTQZJLPZs53sWo5XGj
         ibmCHDi9VQR41GbgpKQYEEWzMMATSBFPpCs6Bcl1z1z3UNDJsn8yaTG9roKaoNtLb49P
         zz3g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=MMdLacDn;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716477201; x=1717082001; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SFcopwR5pvGFC5WIsttp1npa3vl8Z8DGXI4l+MvXkfI=;
        b=FhU4BpWUknTHHPHEnIH1/GTk4btUtQ3GLyZlh8gDMOrmD+yzVm2+9/8M0Mh2VTojp8
         i1bKp0cxV3m/jOE8HM2mywamHKE6cVyX9Q9VJxsAGEPC/Rtd0Rk8l8tLw20/XxyxikNI
         8/XgqPjhCbChMBQYmSXa+/ifKvwM5lYeIbK50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716477201; x=1717082001;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=SFcopwR5pvGFC5WIsttp1npa3vl8Z8DGXI4l+MvXkfI=;
        b=h9xikxKKz3t/NnH76EEE7qKYyc3K6m/RZI5qrNcPGIsC7mODFPxl/TJpvmYf5fM6gs
         VhRY0/jVD+KaH+XflEc+A5R3dVd/D0MKxsVPkWfzhOPg5gG5IgMoVqI/QpzqAhXnA8qr
         N6XUhoZVjja2YjVFlno0psGmkp99fIas3hYyYhRink0s2q1opMdoV7zSpyit4TA+kY6A
         x/hJW+bLcN3gCtToF9HPCB8tlNXLm2SWtk4VAhXtPP9JIP4h4e5pc7nR35KFvvUEmXFy
         9dvd5BP45SdoiNCiypuW3kEumEUyC7me0ruub0MROAvwhzjeji5A0TGCSM6ZaPY/bJt4
         8NFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUZS15B/SbOdJIK9z32FwNkJLfmlCx/zmM2Hg6ZCLQCAEui7lvTfGwp4+Sh5eTPco6XcVYHuW4VWAwAYNQXbCpZCN5xW5tSf2OH
X-Gm-Message-State: AOJu0YzcW8IamBnQCmyipWdrfHVKUm5RevZDL7DAXHAHZwgB3CH7j2l5
	QGg1Gr1H4ytS5kASK6Fabl4XR3T67qsbM4FxjTdbXyRaY2vcqpO+KucqRbkf33w=
X-Google-Smtp-Source: AGHT+IHEoCb+myZA6hnHCnPNitdcQInCNKmRf2o2Xaw2+uEgB17yoGzNzlGZCTVxe8+SAFYTK+RQJg==
X-Received: by 2002:a05:6870:1586:b0:23f:5a92:c810 with SMTP id 586e51a60fabf-24c68a2ee58mr7333894fac.12.1716477201134;
        Thu, 23 May 2024 08:13:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:332a:b0:24c:6783:8aa3 with SMTP id
 586e51a60fabf-24c6783ba6fls2124194fac.2.-pod-prod-08-us; Thu, 23 May 2024
 08:13:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVvy48NzGg+jXpr25fcvKrwP7cEyXGjxIBTzd149i/iKXImvNHYlilXbKitSn1b8QW+B6O1cZBGhavY+mnVOlBVFYXr5XEaPWhAzzHHJhRkIVagToc=
X-Received: by 2002:a05:6870:781b:b0:24c:6198:5ff8 with SMTP id 586e51a60fabf-24c68a2a6c1mr7493206fac.4.1716477200381;
        Thu, 23 May 2024 08:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716477200; cv=none;
        d=google.com; s=arc-20160816;
        b=V8+fGd5ecPFUVltPuJxowozK5Erohy5Haqev2F0EuKoUz0p50XSuxHRrhZjNYRiXpR
         H2FY7JyWnR9xoUOJo4sABi/4aLyZHHi4HUk/POigWg5pP23p4XO5pm/Z3EThniFQKt4d
         4Ck5BLTu4UYxtXvm3q1Plans23cV+I+JNM9l85fmTUuGccIpXX5ZvVGAKj0UQVagcz7i
         eXzJVTQBwNuvO1IwbZdunrL830MHrnZlInNHWeCoLjjNMCgTN/90XacO5OMuR6aG/OHP
         Hi9JWqnDQ0OJj2vNeAGSumpNaS/FTtiLd7KhbUdKf7Wey38q8W0cz00YqwpCWtBYa6G9
         pz3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IurSXSX4036itBqp+pWqeC3ztpRRvIk+WgUaysK+eho=;
        fh=bfYHxAwpd4WFdNV7c8TnuQkNX+gv7KtHDEDPPDi1dEk=;
        b=NRiH9Tt63Vl6kp7Fq6nugMDbbsO1s5fllLac5ZfAWZM9W/94oCdZPkx7EP7CI97tiy
         0GLtQIPoRTysTFt+iY/3ME9Zkq1/cmybtTfSJIcNIWyuw3hFM9mBZZNbs1CZLLjm7n79
         bWj/1slo2WxnWYVtUpzuSTYNXCEb60c0+gpLuPijXHO5RB7pe1RyCZXtBoTJisxVX2JT
         VIy3SZMSkm1PHmBVkX8dCmthm2VJYoX0Nv2Xb6A7I3OnGzegYgfO2IF3OEEHcVHv1VzP
         CMfM4mYRnd7OHZxFZx+5fOumbXH8fNm08Ky6NS9SGCIQLFl4/i9Rho+ROV0a8/JO3WQg
         fRvg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=MMdLacDn;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 586e51a60fabf-2412a6a5c10sor13613050fac.10.2024.05.23.08.13.20
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 08:13:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVZ2kbkcuS3aC8aPbIsrXZKnVmwRUR/h1NbWtvgVEs/WNqll18qXKj8kjU4xYW5Iiyfj5ifrpzq3nPJiXd3xY3mlPyuC37h/HK0bYwVmYNV/olesnk=
X-Received: by 2002:a05:6870:c085:b0:229:f022:ef83 with SMTP id
 586e51a60fabf-24c68d240femr7159783fac.43.1716477199847; Thu, 23 May 2024
 08:13:19 -0700 (PDT)
MIME-Version: 1.0
References: <20240523092608.874986-1-shichaorai@gmail.com> <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
 <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
In-Reply-To: <bb581989-4ac5-4ffe-9f80-01b5f993146f@rowland.harvard.edu>
From: shichao lai <shichaorai@gmail.com>
Date: Thu, 23 May 2024 23:13:08 +0800
Message-ID: <CACjpba5iJ5dC=rB_Ckaqe4BKesrAN2VmsDCPZJ=frufNgA96Uw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org, 
	xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=MMdLacDn;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 23, 2024 at 10:15=E2=80=AFPM Alan Stern <stern@rowland.harvard.=
edu> wrote:
>
> On Thu, May 23, 2024 at 09:58:21AM -0400, Alan Stern wrote:
> > On Thu, May 23, 2024 at 05:26:08PM +0800, Shichao Lai wrote:
> > > Since uzonesize may be zero, so judgements for non-zero are nessesary=
 in both place.
> > > Previous check is moved out of loop, and one more check is added in a=
lauda_write_lba.
> > >
> > > Reported-by: xingwei lee <xrivendell7@gmail.com>
> > > Reported-by: yue sun <samsun1006219@gmail.com>
> > > Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> > > ---
> > >  drivers/usb/storage/alauda.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alaud=
a.c
> > > index 115f05a6201a..a6e60ef5cb0d 100644
> > > --- a/drivers/usb/storage/alauda.c
> > > +++ b/drivers/usb/storage/alauda.c
> > > @@ -818,6 +818,8 @@ static int alauda_write_lba(struct us_data *us, u=
16 lba,
> > >     unsigned int blocksize =3D MEDIA_INFO(us).blocksize;
> > >     unsigned int lba_offset =3D lba % uzonesize;
> > >     unsigned int new_pba_offset;
> > > +   if (!uzonesize)
> > > +           return USB_STOR_TRANSPORT_ERROR;
> > >     unsigned int zone =3D lba / uzonesize;
> > >
> > >     alauda_ensure_map_for_zone(us, zone);
> > > @@ -923,6 +925,8 @@ static int alauda_read_data(struct us_data *us, u=
nsigned long address,
> > >     unsigned int uzonesize =3D MEDIA_INFO(us).uzonesize;
> > >     struct scatterlist *sg;
> > >     int result;
> > > +   if (!uzonesize)
> > > +           return USB_STOR_TRANSPORT_ERROR;
> > >
> > >     /*
> > >      * Since we only read in one block at a time, we have to create
> >
> > This is definitely NOT the right way to fix the bug!
> >
> > uzonesize is set once, when the device is probed, in
> > alauda_init_media().  That is where the check belongs; if uzonesize is =
0
> > then the function should print a warning and return
> > USB_STOR_TRANSPORT_ERROR, because the device is unusable.
> >
> > It's probably a good idea to check pagesize, blocksize, and zonesize at
> > the same time, even though none of them are used for any divisions.
>
> Wait a minute.  I just went through the code more carefully.  It should
> not be possible for uzonesize to be 0, because it is defined by:
>
>         MEDIA_INFO(us).uzonesize =3D ((1 << media_info->zoneshift) / 128)=
 * 125;
>
> where media_info->zoneshift is always a value between 8 and 12.
>
> So the whole idea behind this patch is misguided.  The real problem is
> to find out why uzonesize ended up being 0.
>
> (And it's not necessary to check pagesize, blocksize, or zonesize,
> because none of them can ever be 0 either.)
>
> Alan Stern

Thanks for your comprehensive analysis.
I added some pr_info() to check the workflow, and I found that the
uzonesize was not initialized in fact!

The workflow is shown as below.
Before alauda_read_data(), there are in fact many alauda_check_media(),
but none of them enter the branch of alauda_init_media(), where
uzonesize is set to nonzero value.
The key branch condition is "status[0] & 0x08", which is always
unsatisfied in this repro.

```
alauda_transport
    alauda_check_media
        if (status[0] & 0x08) // not satisfied
            alauda_init_media()
                // initialize uzonesize
    alauda_read_data
```

I also print status[0] before the branch, which may be helpful for you
to analyze.

The part you should focus on is the information beginning with
"alauda_check_media".
e.g. "alauda_check_media: before alauda_get_media_status, status[0]:
0000000000000000" means in alauda_check_media(), before calling
alauda_get_media_status()
It seems that alauda_get_media_status() will transform the status[0]
to 0x0000000000000036, which doesn't satisfy the condition of
"status[0] & 0x08".
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
root@syzkaller:~# ./exp
[   28.645451][ T2386] usb 1-1: new high-speed USB device number 2
using dummy_hcd
[   28.885289][ T2386] usb 1-1: Using ep0 maxpacket: 16
[   29.005519][ T2386] usb 1-1: config 0 has an invalid interface
number: 192 but max is 0
[   29.007448][ T2386] usb 1-1: config 0 has no interface number 0
[   29.008759][ T2386] usb 1-1: config 0 interface 192 altsetting 0
endpoint 0x9 has invalid wMaxPacketSize 0
[   29.010799][ T2386] usb 1-1: config 0 interface 192 altsetting 0
bulk endpoint 0x9 has invalid maxpacket 0
[   29.012467][ T2386] usb 1-1: config 0 interface 192 altsetting 0
endpoint 0x8F has invalid maxpacket 59960, setting to 1024
[   29.012959][ T2386] usb 1-1: config 0 interface 192 altsetting 0
bulk endpoint 0x8F has invalid maxpacket 1024
[   29.013413][ T2386] usb 1-1: New USB device found, idVendor=3D07b4,
idProduct=3D010a, bcdDevice=3D 1.02
[   29.013809][ T2386] usb 1-1: New USB device strings: Mfr=3D0,
Product=3D0, SerialNumber=3D0
[   29.015193][ T2386] usb 1-1: config 0 descriptor??
[   29.035791][ T4124] raw-gadget.0 gadget.0: fail, usb_ep_enable returned =
-22
[   29.057576][ T2386] ums-alauda 1-1:0.192: USB Mass Storage device detect=
ed
[   29.062276][ T2386] scsi host2: usb-storage 1-1:0.192
[   30.098931][ T2386] scsi 2:0:0:0: Direct-Access     Olympus
MAUSB-10 (Alauda 0102 PQ: 0 ANSI: 0 CCS
[   30.102903][ T4131] alauda_check_media: before
alauda_get_media_status, status[0]: 0000000000000000
[   30.104297][ T2386] sd 2:0:0:0: Attached scsi generic sg2 type 0
[   30.135805][ T4131] alauda_get_media_status: data=3D54, rc=3D0
[   30.137113][ T4131] alauda_check_media: after
alauda_get_media_status, status[0]: 0000000000000036
[   30.138991][ T4131] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   30.141727][ T4131] alauda_check_media: before
alauda_get_media_status, status[0]: 0000000000000036
[   30.355544][ T4131] alauda_get_media_status: data=3D54, rc=3D0
[   30.356815][ T4131] alauda_check_media: after
alauda_get_media_status, status[0]: 0000000000000036
[   30.358728][ T4131] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   30.361408][ T4131] alauda_check_media: before
alauda_get_media_status, status[0]: 00000000000000ff
[   30.575607][ T4131] alauda_get_media_status: data=3D54, rc=3D0
[   30.576910][ T4131] alauda_check_media: after
alauda_get_media_status, status[0]: 0000000000000036
[   30.578823][ T4131] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   30.580999][ T4131] alauda_check_media: before
alauda_get_media_status, status[0]: 00000000000000ff
[   30.795625][ T4131] alauda_get_media_status: data=3D54, rc=3D0
[   30.796899][ T4131] alauda_check_media: after
alauda_get_media_status, status[0]: 0000000000000036
[   30.798773][ T4131] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   30.801017][ T4131] alauda_check_media: before
alauda_get_media_status, status[0]: 00000000000000ff
[   31.015362][ T4131] alauda_get_media_status: data=3D54, rc=3D0
[   31.016679][ T4131] alauda_check_media: after
alauda_get_media_status, status[0]: 0000000000000036
[   31.018565][ T4131] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   31.020543][  T263] sd 2:0:0:0: [sdb] Very big device. Trying to
use READ CAPACITY(16).
[   31.023323][  T263] sd 2:0:0:0: [sdb] Using 0xffffffff as device size
[   31.035382][ T2386] scsi 2:0:0:1: Direct-Access     Olympus
MAUSB-10 (Alauda 0102 PQ: 0 ANSI: 0 CCS
[   31.035466][ T4131] alauda_transport: before alauda_check_media
[   31.038810][ T4131] alauda_check_media: before
alauda_get_media_status, status[0]: 0000000000000000
[   31.043663][ T2386] sd 2:0:0:1: Attached scsi generic sg3 type 0
[   31.235486][ T4131] alauda_get_media_status: data=3D54, rc=3D0
[   31.237015][ T4131] alauda_check_media: after
alauda_get_media_status, status[0]: 0000000000000036
[   31.239266][ T4131] alauda_check_media: before init_media,
status[0]: 0000000000000036
[   31.241273][ T4131] alauda_transport: after alauda_check_media ->
alauda_read_data
[   31.243134][ T4131] alauda_read_data: 0
[   31.244148][ T4131] divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba5iJ5dC%3DrB_Ckaqe4BKesrAN2Vms=
DCPZJ%3DfrufNgA96Uw%40mail.gmail.com.
