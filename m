Return-Path: <usb-storage+bncBCQPF57GUQHBBUWJQHWQKGQESJ27DVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 176E9D3E1E
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 13:17:40 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id a22sf14125270ioq.23
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 04:17:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570792658; cv=pass;
        d=google.com; s=arc-20160816;
        b=H7hinhHV9Kh/RI/7KMWTMvKuQKqSuXCaKB8JUf2pgyVHZrlX4Od8NYt09hxYPny4zN
         PD7AbEhCY/hmtl5jbGOupJ8OUra7zYk18C81v1PXWerp6OUqOXORu1QgH9Z8MK2zhP/Q
         94M0XwtacIBN6kXs1QG8N7114KX8r2UfEkDXtNWqcYw5Kl9LD4dw/gAuVXlrHGK40Olx
         PEBDxOP9QNIhfCN2bo6Vbrkr8wrpw1PiYrAxK2r9+DKolsh2b17cjDyumwSUyldO+8FI
         UOFq99txxjmFSeTATqx511wJouexzdX0VMwDlbIx9tx2SdrTdElOmnwA7FGGxYjQniPc
         IC2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=x+ku/S0eVHG6HAXNgFvyDL9Ftldv0HZIeIP37+lohjg=;
        b=KDjnxaOsByAKVKzQx9Bro2fuhblrR8+mQ/rPM0oEOqwFTFeqhKCnA1yPTnwySx4xbu
         tnQopnpIHZwgpnfsqEwWsPyFby7JzwzHocCFsjIMCAgZCZxCJo4z1wOzG+N6mn+vfMnE
         mE/E5kr9sAi+bUOB7x77rvFyTBdQ/852XequNLKZCIZfbpWLfUyWn0FIowug+HlDLk1O
         9b/hV/6FmpPLmxokWsiOSYZyVvdzE5TeMHbNkxhSywGdraKtCbsHOxnaYnNbd2GpL5aJ
         w2h2tqbVm1fwOPqta/dxpnbmqPpiWoP9hlt0GCSjDwpwXuhHs+kzC+rwFofV+hyh5dL7
         cn0A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 30wsgxqkbaba8ef0q11u7q55yt.w44w1ua8u7s439u39.s42@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=30WSgXQkbABA8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x+ku/S0eVHG6HAXNgFvyDL9Ftldv0HZIeIP37+lohjg=;
        b=g/10nN9dpPEyqIQ2sDTrxccDAZZDmlKNdU7AkEAlQDSMHpWntAwNP4WHttiEGcgOUq
         K0dB8phv+N4h+cOxbq2xJ9UVZ/52CGHJnwPY4iXW5TQlgk53Ty3QKXM3R9NOzeWXT1rV
         snivGn1W1UGLZh9OV4eDU9Ip4q+o/DUA5lTP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x+ku/S0eVHG6HAXNgFvyDL9Ftldv0HZIeIP37+lohjg=;
        b=cFdrPDK9VvHIlonL1m6Fa7SvHZc4Tsv8aD3VNmNf5ufSH48WY8HEhEJtLcBjVpGxAP
         EBqy9Vy4TfgnGzFy6tP0o54DdASDvmXU/0qOJ0KIF5Odlg9V4Lzo3XEe28ZxKa5yU9U8
         DQ+TeukjJpvw4T9KVKkKNJLfuZdHlKE4wqBQ56d9RJKbXRjCP1ViWuKI2lrAxGkff0ts
         0aQWiXcRsFYE2dqfglZVYXDmwm4aQXwoa7hMOM3UD5eqSlVtV9JTJ2gVu4/6l6bBO2GS
         QM/yyeHN41wUzz3fh4VDD7eiGbdO/OS7YCsIDKRlsQ6bbF5OZu3f3ESwxx5dL5dRBhBS
         oH7Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVu8AXr/hSpN3rMiHgj2SC0ceFscmVnhps/ksq8jwOEFDQJIvtu
	eyYcw1UCMrHWvg1w2RQii7Sxqw==
X-Google-Smtp-Source: APXvYqzzqvNg6sjnhrJHXUYcUbhkjsgZod5NuJ88qLjjsVUqo+WXsH1wdHmbra7iBLzU9dEA8IhyZw==
X-Received: by 2002:a5d:8a07:: with SMTP id w7mr880566iod.249.1570792658684;
        Fri, 11 Oct 2019 04:17:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:8943:: with SMTP id b3ls2108237iot.10.gmail; Fri, 11 Oct
 2019 04:17:38 -0700 (PDT)
X-Received: by 2002:a5d:8b48:: with SMTP id c8mr16336348iot.64.1570792658164;
        Fri, 11 Oct 2019 04:17:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570792658; cv=none;
        d=google.com; s=arc-20160816;
        b=X1E4BZJTksjRi3J3Q+OpJGrmCF1rvWzh3HsaUYaN9yUJg9EuxGl/w2yEHQYS5YTZr2
         3GWPZj8TQ0ltrh8j5F9Kev0xeR9ZufIZltxKmTrj9ojuxctvYAcEXH/J27D3gF/hA+2F
         WrWjec5r4YyJBTmanALv21y73kRhYirECCrpNiSwxRiMCOmO/yoFiWpqZpd0S56Hp0/G
         tx2FhfWvx5jPJ657pxW9zYEQxUV3KYOR3DH4GRxXM96VqBjVpmnkPgn4vEBTvgCqMDGr
         smC6SyV6PAZlaYV34VOWioOE51+Fw23YpOmZXQhozL0lqTPfaOfeFVh/i/JG91iGHeam
         g0MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=J6IpSUQHDWERoX2AnvSyjcwg1RqT2lsBVSYteeT19hs=;
        b=no0vES3gz9ndWw+/JhfQjdyb3EufMjgQOVaK3YjDy7ahLK71foX26yQTnC5350ksO5
         0fZVkVB//qyragZgRy+MTu5SP12v3/71NzMoVPgYloFMXa+sXNsq8rkHAxvPMXeV7uNg
         ElbTfD5ZUcovfLGEuf8InMKvNUMrbr85s8aYjIBYAjUWzb5FvxgEzoi/GfYE7vAMnEE8
         fNez31iGgtlfP0snLKK597q+1FoWna7Hy0M8XDuR/i9k7npcLjn3d+bZMZuAuVSoHlF6
         QKJxVnxnvfsZ15Db3ZaA4Zer/54Clsjm62Q7s4e3ZMPRGL4SVjt8h/e6aYIqA6vTB3Bc
         MCrw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 30wsgxqkbaba8ef0q11u7q55yt.w44w1ua8u7s439u39.s42@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=30WSgXQkbABA8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id c14sor6965385iot.89.2019.10.11.04.17.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 04:17:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30wsgxqkbaba8ef0q11u7q55yt.w44w1ua8u7s439u39.s42@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
MIME-Version: 1.0
X-Received: by 2002:a6b:5814:: with SMTP id m20mr16543044iob.242.1570792657772;
 Fri, 11 Oct 2019 04:17:37 -0700 (PDT)
Date: Fri, 11 Oct 2019 04:17:37 -0700
In-Reply-To: <20191011111732.GA25982@localhost.localdomain>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <00000000000061e8090594a0aa4c@google.com>
Subject: [usb-storage] Re: Re: KMSAN: uninit-value in alauda_check_media
From: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>
To: Jas K <jaskaransingh7654321@gmail.com>
Cc: gregkh@linuxfoundation.org, jaskaransingh7654321@gmail.com, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	stern@rowland.harvard.edu, usb-storage@lists.one-eyed-alien.net, 
	syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 30wsgxqkbaba8ef0q11u7q55yt.w44w1ua8u7s439u39.s42@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=30WSgXQkbABA8EF0q11u7q55yt.w44w1uA8u7s439u39.s42@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

> Hi, just taking a crack at this. Hope you guys don't mind.

> #syz test: https://github.com/google/kasan.git 1e76a3e5

KMSAN bugs can only be tested on https://github.com/google/kmsan.git tree
because KMSAN tool is not upstreamed yet.
See https://goo.gl/tpsmEJ#kmsan-bugs for details.


> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index ddab2cd3d2e7..bb309b9ad65b 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -452,7 +452,7 @@ static int alauda_init_media(struct us_data *us)
>   static int alauda_check_media(struct us_data *us)
>   {
>   	struct alauda_info *info = (struct alauda_info *) us->extra;
> -	unsigned char status[2];
> +	unsigned char *status = us->iobuf;
>   	int rc;

>   	rc = alauda_get_media_status(us, status);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/00000000000061e8090594a0aa4c%40google.com.
