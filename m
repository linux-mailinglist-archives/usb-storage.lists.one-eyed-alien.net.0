Return-Path: <usb-storage+bncBCIKNOFMWQGRB4UCXGJAMGQEX52QTGY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 647924F71A2
	for <lists+usb-storage@lfdr.de>; Thu,  7 Apr 2022 03:42:12 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id h9-20020a631209000000b0039cc31b22aesf638495pgl.9
        for <lists+usb-storage@lfdr.de>; Wed, 06 Apr 2022 18:42:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649295731; cv=pass;
        d=google.com; s=arc-20160816;
        b=QIkgvoPC1htVf1OOZ35mkoeRGUWpchR+Jrvby93A+jn75WkYlPufnlooxYDGrfsPG4
         dgEm8h5Uxnit/4XRhKioTyrtAPfNx+AuGZl9C+w3sARJFWvpiBevwD/efSwYmaP96nLT
         W1XSRfIt0Y8ld0MadAfo1JSl5CfzpacV4hj72zLDXNGbbFus/tLK/CPvaLD22jle4ZM1
         Vz4HdI5f48DmgpR9lg0lCmXa+TDH+ivOl4HlqT6saHvDUQheW8Fa7/tD+c0ek18B3met
         vckxxy04bose+vIeFw4W8vsQXrjZPkAiRczs6AIfundghgWZ96fgdAt1XiOIOIe9HHAu
         RtkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Qj0eQajQ9TKJ3hGz6vsQ6GptgJNcftzCubh6Whj8vGk=;
        b=0EQws5NDkcvklntGeykk9nHHruTuRI/U4WlSuU03ohD1ogjl+X5xpvVI3SRIjg0ukZ
         XYknLLb5bz8pFncTeJwE2iKpXqIfN9OW7oljgROcI9LZl3+Ql3/h2rXiQK6ogzKQi5HM
         We2j9p5ArLkqWSm1zXuQxdKyWUqqqU3eauOI9wvH047scCOTWzNJDW4ccHPs/Kvo/BbW
         8O06QPSBDVrVJ8D4ONCS0iMlBei3rnuUPV9pl767b4cEFgA7g/MKxVcMmTTSFzGLtyTS
         OXbGP3D3i0CWCg4OkcErWKD+BXstcRfXKH/gVXLQIN4gyXtgAEzyYg6IbRrKDF7h9sB+
         evBg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qj0eQajQ9TKJ3hGz6vsQ6GptgJNcftzCubh6Whj8vGk=;
        b=fjj79LbBLXluyfTXduTq2Zstb/8kYamrX7EBM9JWfLF2XwDvV5eKWszGfmktHCkYiF
         wREh1eSlQaUy2n60MnG35ZdJG+IT1oilIk3SN8uXnHWN+0Pbr5mAi6q1iKoQEXBqyFzJ
         SV3kXxIEL4azQ7HQg8a6cgMtnfOOt4lvGbI3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qj0eQajQ9TKJ3hGz6vsQ6GptgJNcftzCubh6Whj8vGk=;
        b=7opJBAmPMhoqkDX/NmXzVrnd9vKfF8HmmbmWgWciV8vdJq5z+M2uelMwoh/PN5CIBo
         abCoqPz/5k8m8Su0PvagDRGIfgmYq18C0L7SV/rcihdFdPngCkOjwRLHAuxw7cfSTlb7
         LSXRVz+27skBc7lqv7oYlIDhq+KquTUv2qvs3nABQjY9faOr27icJiZAWgoCouW9OEMi
         m2ocOqb63xTgRCoJgxGv2acrAl1A4B6srUTREKTwP6tSQ8yTK5/Qh+jPxcbQSz+glxdP
         DxkA+vJxosUNdWtpI0w8V7aRviFdGSgTfwsKYFN7lB6ZOGABlOhViOR5eKDABLhm7YWl
         y7sA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532HZbNAVlsZ4tYfCTokkfEYOLuycZYN2bM17UKHoki47HHG9fdc
	lCrw2n5WBSFKzmfYe3zBQmC+Iw==
X-Google-Smtp-Source: ABdhPJzhNCmjLu1sg+2ovRNxSkmLJqPYNKATvC3nZhHb7UAGzYYhYqLQl87sDv1alfZSchzqCMfnIA==
X-Received: by 2002:a17:90b:16ca:b0:1ca:b25d:cc67 with SMTP id iy10-20020a17090b16ca00b001cab25dcc67mr13212432pjb.183.1649295730759;
        Wed, 06 Apr 2022 18:42:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:c4f:b0:1c6:8749:f769 with SMTP id
 u15-20020a17090a0c4f00b001c68749f769ls1272670pje.3.gmail; Wed, 06 Apr 2022
 18:42:10 -0700 (PDT)
X-Received: by 2002:a17:902:7c90:b0:156:255:c571 with SMTP id y16-20020a1709027c9000b001560255c571mr11363600pll.15.1649295730053;
        Wed, 06 Apr 2022 18:42:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649295730; cv=none;
        d=google.com; s=arc-20160816;
        b=vn7uHkzU/SUdzdluZVj1QE159w7zpk/WNugXXJts8k2tORC0OxUIFOiOAe2xoASbuV
         XkYAEsZ0URQCwv0jMYU61ZmP4uUzCm6VCQ0cK7J/DTmVNM6Li1Sd9lXiHS7Lutc3xwry
         T5WW4CqZ9lPW3Zt4vaube231fZzWE/scWZdXnywnWAC1r0ueRyxNv6dClGio++FSMbY4
         qUxmbwWdQD6gvlH88aacF1wqRV8LtKK7dq3NtgpxOITl1p0sjYmAhONjBir9R7Jj4YPY
         8Aq6+jgENA4JZo/U1+D30NgIJ0RHm6j/Ns/IKiDJIUM2rIX+MDi5rpCoyiZLyfH67kBU
         nx6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Cbu50ZX9GU30P1kaMPbkvW1OC1b0Lv+kyZfZEje4AKw=;
        b=d7OrbGmtBJ7xd7ZrMn9xIZCe+jSXq2Vt2qEZU7ylKhbw7wSLiXdHhjkK1VWOFqoH1P
         3Gs54HLBJXR/iUVsty2qBgVKdvNV+TuL3VESMjZI3TtoO+XSMuEbHYj42O21avBVzCkt
         R0s1u7yVH671IGsuQpSuG9m5d3ZCD+sh/q2yVz9F5CBkkxn4K6TNmB49Ar9wJncnClJ7
         hutLDPzVdmbntOBzkZRy5lnO/O0BvX3btQFg4qOFwQaJ8uMWXXl0cSXi+QfLgodj7Iuj
         2urPTuckgGnSBQumrS1avFf7FJpj3TAOpRZF5D+zQluCeiCqZ4M5K9RRGNUHhGEbqqGg
         VtnQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (spam.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id v20-20020a631514000000b003817d61f043si15894754pgl.493.2022.04.06.18.42.09
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 06 Apr 2022 18:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [222.205.11.114])
	by mail-app4 (Coremail) with SMTP id cS_KCgBHvaRtQU5iYn_gAA--.26376S4;
	Thu, 07 Apr 2022 09:42:05 +0800 (CST)
From: Lin Ma <linma@zju.edu.cn>
To: stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	mdharm-usb@one-eyed-alien.net
Cc: Lin Ma <linma@zju.edu.cn>
Subject: [usb-storage] [PATCH v1] USB: storage: karma: fix rio_karma_init return
Date: Thu,  7 Apr 2022 09:41:56 +0800
Message-Id: <20220407014156.3038-1-linma@zju.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CM-TRANSID: cS_KCgBHvaRtQU5iYn_gAA--.26376S4
X-Coremail-Antispam: 1UD129KBjvJXoW7CrWUtw48GFW5Xr48CFyrCrg_yoW8Xr4kpa
	ykJry5CFyUJF4fKr9rX34DuFy5Can7tFyjga4fKwn09rsrJF48CF12va4093ZYqrySkr1I
	qFsYkFyagFn8AFDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUv01xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJr0_GcWl84ACjcxK6I8E
	87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
	8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_
	Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
	xGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK6w4l42xK82IYc2Ij64vIr41l
	42xK82IY6x8ErcxFaVAv8VW8uw4UJr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I
	8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWU
	twCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x
	0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_
	Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUb
	LiSPUUUUU==
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Content-Type: text/plain; charset="UTF-8"
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

The function rio_karam_init() should return -ENOMEM instead of
value 0 (USB_STOR_TRANSPORT_GOOD) when allocation fails.

Simlarlly, it should return -EIO when rio_karma_send_command() fails.

Fixes: dfe0d3ba20e8 ("USB Storage: add rio karma eject support")

Signed-off-by: Lin Ma <linma@zju.edu.cn>
---
Changes in V1:
  - use -ENOMEM rather than USB_STOR_TRANSPORT_ERROR
  - take care of rio_karma_send_command() too

 drivers/usb/storage/karma.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/storage/karma.c b/drivers/usb/storage/karma.c
index 05cec81dcd3f..38ddfedef629 100644
--- a/drivers/usb/storage/karma.c
+++ b/drivers/usb/storage/karma.c
@@ -174,24 +174,25 @@ static void rio_karma_destructor(void *extra)
 
 static int rio_karma_init(struct us_data *us)
 {
-	int ret = 0;
 	struct karma_data *data = kzalloc(sizeof(struct karma_data), GFP_NOIO);
 
 	if (!data)
-		goto out;
+		return -ENOMEM;
 
 	data->recv = kmalloc(RIO_RECV_LEN, GFP_NOIO);
 	if (!data->recv) {
 		kfree(data);
-		goto out;
+		return -ENOMEM;
 	}
 
 	us->extra = data;
 	us->extra_destructor = rio_karma_destructor;
-	ret = rio_karma_send_command(RIO_ENTER_STORAGE, us);
-	data->in_storage = (ret == 0);
-out:
-	return ret;
+	if (rio_karma_send_command(RIO_ENTER_STORAGE, us))
+		return -EIO;
+
+	data->in_storage = 1;
+
+	return 0;
 }
 
 static struct scsi_host_template karma_host_template;
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20220407014156.3038-1-linma%40zju.edu.cn.
